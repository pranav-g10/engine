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
            %w{content_types pages snippets theme_assets}.each {|x| self.send(x).delete_all}

            from_site = Locomotive::Site.find from

            # copying content types
            dummy = []
            from_site.content_types.each do |c|
              c.as_document["site_id"] = self.id
              c.as_document["number_of_entries"] = 0
              c.as_document["_id"] = BSON::ObjectId.new
              c.as_document["label_field_id"] = BSON::ObjectId.new
              dummy << c.as_document
            end
            Locomotive::ContentType.collection.insert_many(dummy)

            # correcting associations for content types
            self.reload.content_types.each do |c|
              c.entries_custom_fields.where(:type.in => %w(has_many many_to_many belongs_to)).each do |field|
                target_content_type = self.content_types.by_id_or_slug(field.name.pluralize).first
                field.assign_attributes(class_name: target_content_type.klass_with_custom_fields(:entries).name)
                field.save!
              end
            end

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

            # copying assets
            FileUtils::mkdir_p  "#{Rails.root}/public/sites/#{self.id.to_s}/theme/"
            FileUtils.cp_r "#{Rails.root}/public/sites/#{from_site.id.to_s}/theme/.", "#{Rails.root}/public/sites/#{self.id.to_s}/theme/."

          end

        end

      end
    end
  end
end
