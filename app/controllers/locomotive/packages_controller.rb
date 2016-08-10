module Locomotive
  class PackagesController < BaseController

    account_required

    within_site_only_if_existing true # Note: do not validate the membership

    before_filter :load_package, only: :activate

    layout '/locomotive/layouts/pricing'

    def activate
      @account_pack = Locomotive::AccountPackage.find_or_initialize_by(actor: current_locomotive_account)
      if @package.free_trial?
        current_locomotive_account.update(trial_in_use: true)
      end
      @account_pack.assign_attributes(package: @package)
      if @account_pack.save
        flash[:notice] = "Plan Activated"
        redirect_to sites_path
      else
        flash[:alert] = "Try Again, Some thing went wrong"
        render :index
      end
    end

    private

    def load_package
      @package = Package.find(params[:id])
    end

  end
end
