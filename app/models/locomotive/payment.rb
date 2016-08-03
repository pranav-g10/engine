module Locomotive
  class Payment

    include Locomotive::Mongoid::Document

    ## fields ##
    field :payment_mode, type: String
    field :first_name, type: String
    field :last_name, type: String
    field :ip_address, type: String
    field :card_expires_on, type: Date

    belongs_to :account_package

  end
end
