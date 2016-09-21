module Locomotive
  module PackagesHelper

    def disabled_package?(account_package, package)
       if account_package && account_package.package.expire_type == "monthly" &&
           (account_package.package.expire_type == package.expire_type && account_package.package.price >= package.price)
          return true
       elsif (account_package && account_package.package.expire_type == "yearly")  && (package.expire_type == "monthly" || account_package.package.price >= package.price)
          return true
       else
          return false
       end
    end

    def active_package?(account_package, package)
      if account_package &&
          (account_package.package.expire_type == package.expire_type && account_package.package.price == package.price)
        return true
      else
        return false
      end
    end

  end
end
