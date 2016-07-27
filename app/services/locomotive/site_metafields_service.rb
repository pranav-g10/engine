module Locomotive

  class SiteMetafieldsService < Struct.new(:site, :account)

    include Locomotive::Concerns::ActivityService

    def update_all(attributes)
      each_metafield(attributes) do |namespace, name, value|
        next unless field = site.find_metafield(name)

        if field['localized']
          (namespace[name] ||= {})[locale] = value
        else
          namespace[name] = value
        end
      end

      if site.save
        track_activity 'site_metafields.updated'
      end
    end

    def restore
      property_type = Locomotive::ContentType.find_by(name: 'Properties')
      default_fields = property_type.entries.map(&:title)
      property_type = Locomotive::ContentType.find_by(name: 'Properties')
      values_type = Locomotive::ContentType.find_by(name: "Values")
      property_entries = property_type.entries
      values_entries = values_type.entries
      default_fields.each do |field|
        type = property_entries.find_by(title: field)
        values = values_entries.where(property_id: type.id.to_s)
        keys = site.metafields[field].keys
        keys.each do |key1|
          site.metafields[field][key1]  = values.find_by(name: key1).value
        end
      end
      site.save
    end

    protected

    def each_metafield(attributes, &block)
      return if attributes.blank?

      attributes.each do |_name, _attributes|
        site.metafields[_name] ||= {}
        namespace = site.metafields[_name]

        _attributes.each do |name, value|
          yield(namespace, name, value)
        end
      end
    end

    def locale
      ::Mongoid::Fields::I18n.locale
    end

  end
end
