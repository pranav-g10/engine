module Locomotive
  module Concerns
    module Site
      module ThemeSource

        extend ActiveSupport::Concern

        included do

          ## fields ##
          field :is_theme,          type: Boolean,  default: false
          field :theme_name,        type: String,   default: ''

          scope :themes, -> { where('metafields_ui.is_theme' => true) }

          # FIXME - refactoring in progress
          def activate_theme(from)
            %w{pages snippets theme_assets}.each {|x| self.send(x).delete_all}

            from_site = Locomotive::Site.find from

            generate_models(from_site)
            maintain_assoc
            generate_helpers(from_site)
            # copying assets
            copy_assets_to_s3(from)
            # FileUtils::mkdir_p  "#{Rails.root}/public/sites/#{self.id.to_s}/theme/"
            # FileUtils.cp_r "#{Rails.root}/public/sites/#{from_site.id.to_s}/theme/.", "#{Rails.root}/public/sites/#{self.id.to_s}/theme/."

            # copying metafields
            self.update(metafields: from_site.metafields, metafields_ui: from_site.metafields_ui,
                        metafields_schema: from_site.metafields_schema)
            self.update("metafields_ui.is_theme" => false)

          end

          def generate_models(from_site)
            from_site_slugs = from_site.content_types.map(&:slug)
            current_slugs = self.content_types.map(&:slug)
            self.content_types.where(:slug.in => current_slugs - from_site_slugs ).delete_all

            # copying content types and their entries if applicable
            dummy = []
            from_site.content_types.where(:slug.in => from_site_slugs - current_slugs).each do |c|
              c.as_document["site_id"] = self.id
              c.as_document["number_of_entries"] = 0
              c.as_document["_id"] = BSON::ObjectId.new
              c.as_document["label_field_id"] = BSON::ObjectId.new
              dummy << c.as_document
            end
            Locomotive::ContentType.collection.insert_many(dummy)
          end

          def maintain_assoc
            # correcting associations for content types
            self.reload.content_types.each do |c|
              c.entries_custom_fields.where(:type.in => %w(has_many many_to_many belongs_to)).each do |field|
                target_content_type = self.content_types.by_id_or_slug(field.name.pluralize).first
                field.assign_attributes(class_name: target_content_type.klass_with_custom_fields(:entries).name)
                field.save!
              end
            end
          end

          def generate_helpers(from_site)
            # copying pages, snippets, theme assets
            %w{pages snippets theme_assets}.each do |klass|
              dummy = []
              from_site.send(klass).each do |c|
                c.as_document["site_id"] = self.id
                c.as_document.delete "_id"
                dummy << c.as_document
              end
              ('Locomotive::' + klass.singularize.camelize).constantize.collection.insert_many(dummy)
            end
          end

          def copy_assets_to_s3(from)
            bucket = Aws::S3::Bucket.new(ENV['S3_BUCKET'], region: ENV['S3_BUCKET_REGION'],
                                         access_key_id: ENV['S3_KEY_ID'],
                                         secret_access_key: ENV['S3_SECRET_KEY'])
            bucket.objects(prefix: "sites/#{from.to_s}").each do |obj|
              key = obj.key.gsub(from.to_s, self.id.to_s)
              source_obj = bucket.object(key)
              source_obj.copy_from("#{ENV['S3_BUCKET']}/#{obj.key}")
            end
          end

        end

      end
    end
  end
end
