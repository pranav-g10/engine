module Locomotive
  class Package

    include Locomotive::Mongoid::Document

    ## fields ##
    field :name, type: String
    field :price, type: BigDecimal
    field :desc, type: String
    field :expire_after, type: Integer # no of days or month
    field :expire_type, type: String
    field :no_of_pages, type: Integer
    field :no_of_images, type: Integer
    field :no_of_projects, type: Integer
    field :site_count, type: Integer


    ## associations ##
    # belongs_to :site,       class_name: 'Locomotive::Site', validate: false, autosave: false
    belongs_to :actor,      class_name: 'Locomotive::Account', validate: false, autosave: false
    has_many   :account_packages, class_name: 'Locomotive::AccountPackage'

    ## validations ##
    # validates_presence_of :name
    # validates_uniqueness_of :name

    ## indexes ##
    # index site_id: 1
    # index site_id: 1, created_at: 1

    def free_trial?
      self.name == 'Trial'
    end

  end
end
