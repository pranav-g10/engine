class InvoiceWorker
  include Sidekiq::Worker

  def perform
    activate_account_packages = Locomotive::Account.activate
    activate_account_packages.each do |account_package|
      invoice = account_package.invoices.create!
      pdf = InvoicePdf.new(invoice)
      Locomotive::UserNotifier.send_invoice(account_package.actor.email, pdf.render, "invoice.pdf").deliver
    end
  end
end