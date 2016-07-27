module Locomotive
  class ThemesController < BaseController

    account_required & within_site

    def show
      authorize(current_site, :update?)
    end

    def activate
      authorize(current_site, :update?)
      if current_site.activate_theme(params[:site_id])
        flash[:notice] = I18n.t('flash.locomotive.themes.activate.notice')
      else
        flash[:alert] = I18n.t('flash.locomotive.themes.activate.alert')
      end
      redirect_to :dashboard
    end

  end
end
