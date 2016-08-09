module Locomotive
  module SitesHelper

    # forms

    def ordered_current_site_locales
      current_site.locales + (Locomotive.config.site_locales - current_site.locales)
    end

    def options_for_site_locales
      Locomotive.config.site_locales.map do |locale|
        text          = I18n.t("locomotive.locales.#{locale}")
        flag_url      = path_to_image "locomotive/icons/flags/#{locale}.png"
        nice_display  = h("<img class='flag' src='#{flag_url}' width='24px' />" + text)

        [
          text,
          locale,
          { :"data-display" => nice_display }
        ]
      end
    end

    def options_for_site_timezones
      Rails.cache.fetch('views/helpers/timezones') do
        ActiveSupport::TimeZone.all.map do |tz|
          [tz.to_s, tz.name]
        end
      end
    end


    # custom method for checking site limit crossed or not
    def sites_limit_crossed?
      if current_locomotive_account.sites.count < current_locomotive_account.account_package.package.site_count
        false
      else
        true
      end
    end

  end
end
