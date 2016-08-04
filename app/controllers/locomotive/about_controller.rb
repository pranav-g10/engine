module Locomotive
  class AboutController < ApplicationController

    helper Locomotive::BaseHelper

    def page
    end

    def contact_us
      Locomotive::UserNotifier.send_email(params[:name], params[:email], params[:phone], params[:message]).deliver
      redirect_to about_page_path
    end
  end
end