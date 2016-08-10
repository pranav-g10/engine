namespace :package do

  desc "packages creating"
  task create: :environment do
    Locomotive::Package.create!([
                        { name: "Agency", price: 29, desc: "", expire_after: 30, expire_type: "monthly",no_of_projects: 999, no_of_pages: 999, no_of_images: 5000, site_count: 10 },
                        { name: "Professional", price: 12, desc: "", expire_after: 30, expire_type: "monthly",no_of_projects: 100, no_of_pages: 100, no_of_images: 1000, site_count: 5 },
                        { name: "Basic", price: 10, desc: "", expire_after: 30, expire_type: "monthly",no_of_projects: 10, no_of_pages: 10, no_of_images: 100, site_count: 3 },
                        { name: "Agency", price: 19, desc: "", expire_after: 365, expire_type: "yearly",no_of_projects: 999, no_of_pages: 999, images: 5000, site_count: 10 },
                        { name: "Professional", price: 8, desc: "", expire_after: 365, expire_type: "yearly",no_of_projects: 100, no_of_pages: 100, no_of_images: 1000, site_count: 5 },
                        { name: "Basic", price: 7, desc: "", expire_after: 365, expire_type: "yearly",no_of_projects: 10, no_of_pages: 10, no_of_images: 100, site_count: 3 },
                        { name: "Trial", price: 0, desc: "", expire_after: 10, expire_type: "",no_of_projects: 10, no_of_pages: 10, no_of_images: 10, site_count: 1 }

                    ])
  end
end
