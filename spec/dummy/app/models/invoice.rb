class Invoice

  include Mongoid::Document

  ## fields ##
  field :invoice_no, type: Integer
  field :date, type: Date
  field :status, type: String
  field :description, type: String

  belongs_to :account_package

  ## validations ##
  validates_uniqueness_of :invoice_no
end
