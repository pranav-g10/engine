class AccountPackage

  include Mongoid::Document

  ## fields ##
  field :package_id, type: Integer
  field :account_id, type: Integer

  index({ package_id: 1, account_id: 1 }, { unique: true, background: true })

end
