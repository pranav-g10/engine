module Locomotive
  class Plan

    include Locomotive::Mongoid::Document

    ## fields ##
    field :name, type: String
    field :price, type: BigDecimal
    field :desc, type: String
    field :expire_after, type: Integer # no of days or month
    field :expire_type, type: String
    field :limitation, type: Hash # no of pages, no of projects
    field :site_count, type: Integer


    ## associations ##
    # belongs_to :site,       class_name: 'Locomotive::Site', validate: false, autosave: false
    belongs_to :actor,      class_name: 'Locomotive::Account', validate: false, autosave: false

    ## validations ##
    validates_presence_of :name
    validates_uniqueness_of :name

    ## indexes ##
    # index site_id: 1
    # index site_id: 1, created_at: 1

  end
end
