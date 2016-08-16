module Locomotive
  class PackagesController < BaseController

    account_required

    within_site_only_if_existing true # Note: do not validate the membership

    before_filter :load_package, only: :activate
    
    layout :resolve_layout



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

    def package_detail
      @account_package = current_locomotive_account.account_package
      if @account_package.nil?
        flash[:alert] = 'No Package Selected'
        redirect_to packages_path and return
      end
      @package = current_locomotive_account.account_package.package
    end

    
    private

    def load_package
      @package = Package.find(params[:id])
    end

    def resolve_layout
      case action_name
        when "activate", "index"
          "/locomotive/layouts/pricing"
        when "package_detail"
          "/locomotive/layouts/account"
        else
          "application"
      end
    end

  end
end
