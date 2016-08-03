module Locomotive
  class PlansController < BaseController

    account_required

    within_site_only_if_existing true # Note: do not validate the membership

    layout '/locomotive/layouts/pricing'

    def activate
      byebug
      true
    end

  end
end
