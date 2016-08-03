class Package

  include Locomotive::Mongoid::Document

  ## fields ##
  field :name, type: String
  field :price, type: BigDecimal
  field :desc, type: String
  field :expire_after, type: Integer # no of days or month
  field :expire_type, type: String
  field :limitation, type: Hash # no of pages, no of projects

  ## validations ##
  # validates_presence_of :name
  # validates_uniqueness_of :name
end
