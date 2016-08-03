class PackagesController < Locomotive::BaseController

  layout 'layouts/application'

  def activate
    @account = Locomotive::Account.find params[:id]
    @account_pack = AccountPackage.new(account_id: @account.id)
    if @account_pack.save
      flash[:notice] = "Plan Activated"
      redirect_to locomotive.sites_path
    end
  end

end