module Locomotive
  module Mongoid

    module Document

      extend ActiveSupport::Concern

      included do
        include ::Mongoid::Document
        include ::Mongoid::Timestamps
        include ::Mongoid::Attributes::Dynamic

        include Locomotive::Mongoid::Liquid
      end

    end

  end
end
