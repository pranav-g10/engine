module Locomotive
  class AccountPackage

    include Locomotive::Mongoid::Document

    ## associations ##
    belongs_to :actor,      class_name: 'Locomotive::Account', validate: false, autosave: false
    belongs_to :package,    class_name: 'Locomotive::Package', validate: false, autosave: false

    # index({ package_id: 1, account_id: 1 }, { unique: true, background: true })

  end
end
