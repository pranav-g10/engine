module Locomotive
  class Payment

    include Locomotive::Mongoid::Document

    ## fields ##
    field :payment_mode, type: String

    belongs_to :account_package

  end
end
