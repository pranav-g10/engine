class PayuController < Locomotive::BaseController

  def success
    current_locomotive_account = Locomotive::Account.find params[:udf1]

    @account_pack = Locomotive::AccountPackage.find_or_initialize_by(actor: current_locomotive_account)
    @package = Locomotive::Package.find params[:udf2]

    current_locomotive_account.update!(mihpayid: params[:mihpayid], cardToken: params[:cardToken],
                                       payment_source: params[:payment_source])

    @account_pack.assign_attributes(package: @package)
    if @account_pack.save
      invoice = @account_pack.invoices.new(invoice_params)
      invoice.save!
      pdf = InvoicePdf.new(invoice, current_locomotive_account)
      Locomotive::UserNotifier.send_invoice(@account_pack.actor.email, pdf.render, "invoice.pdf").deliver
      flash[:success] = 'Plan Activated'
      redirect_to locomotive.sites_path
    else
      flash[:alert] = 'Try Again, Some thing went wrong'
      redirect_to locomotive.packages_path
    end

  end

  def failure
    flash[:alert] = 'Try Again, Some thing went wrong'
    engine.packages_path
  end

  private

  def invoice_params
    params.permit(:mode, :status, :unmappedstatus, :txnid, :amount, :cardCategory, :addedon, :productinfo, :bank_ref_num,
                  :name_on_card, :cardnum, :issuing_bank, :card_type, :controller, :txnid)
  end

end
