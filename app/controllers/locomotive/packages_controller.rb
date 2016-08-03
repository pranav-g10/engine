module Locomotive
  class PackagesController < BaseController

    account_required

    within_site_only_if_existing true # Note: do not validate the membership

    layout '/locomotive/layouts/pricing'

    def activate
      @account = Locomotive::Account.find params[:id]
      @account_pack = AccountPackage.new(account_id: @account.id)
      if @account_pack.save
        flash[:notice] = "Plan Activated"
        redirect_to locomotive.sites_path
      end
    end

  end
end
