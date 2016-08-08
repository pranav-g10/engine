module Locomotive
  class AccountPackage

    include Locomotive::Mongoid::Document

    # fields
    field :days_left, type: Integer
    field :start_at, type: Date, default: Date.today

    ## associations ##
    belongs_to :actor,      class_name: 'Locomotive::Account', validate: false, autosave: false
    belongs_to :package,    class_name: 'Locomotive::Package', validate: false, autosave: false
    has_many :invoices, class_name: 'Locomotive::Invoice'
    # index({ package_id: 1, actor_id: 1 }, { unique: true, background: true })

    after_create :no_of_days_left

    def is_active?
      if package.expire_after > (Date.today - start_at).to_i
        true
      else
        false
      end
    end


    def no_of_days_left
      update!(days_left: package.expire_after)
    end
  end
end
