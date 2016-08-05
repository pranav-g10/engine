module Locomotive
  class Invoice

    include Locomotive::Mongoid::Document

    ## fields ##
    field :invoice_no, type: Integer, default:  ->{ SecureRandom.random_number(999999) }
    field :date, type: Date
    field :status, type: String
    field :description, type: String

    belongs_to :account_package

    ## validations ##
    validates_uniqueness_of :invoice_no
  end
end