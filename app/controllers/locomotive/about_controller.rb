module Locomotive
  class AboutController < ApplicationController

    helper Locomotive::BaseHelper

    def page
    end

    def contact_us
      Locomotive::UserNotifier.send_email(params[:name], params[:email], params[:phone], params[:message]).deliver
      render :json => {:success => true}
    end
  end
end