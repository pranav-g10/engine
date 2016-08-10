module Locomotive
  class Invoice

    include Locomotive::Mongoid::Document

    ## fields ##
    field :invoice_no, type: Integer, default:  ->{ SecureRandom.random_number(999999) }
    field :status, type: String
    field :mode, type: String
    field :unmappedstatus, type: String
    field :amount, type: Float
    field :name_on_card, type: String
    field :cardnum, type: String
    field :bank_ref_num, type: String
    field :issuing_bank,type: String
    field :card_type, type: String
    field :controller, type: String
    field :addedon, type: Time
    field :txnid, type: String
    field :cardCategory, type: String
    field :productinfo, type: String

    belongs_to :account_package

    ## validations ##
    validates_uniqueness_of :invoice_no
  end
end