namespace :package do

  desc "packages creating"
  task create: :environment do
    Package.create!([
                        { name: "Agency", price: 29, desc: "", expire_after: 30, expire_type: "monthly", limitation: {num_of_projects: 999, num_of_pages: 999, num_of_images: 5000}, site_count: 10 },
                        { name: "Professional", price: 12, desc: "", expire_after: 30, expire_type: "monthly", limitation: {num_of_projects: 100, num_of_pages: 100, num_of_images: 1000},site_count: 5 },
                        { name: "Basic", price: 10, desc: "", expire_after: 30, expire_type: "monthly", limitation: {num_of_projects: 10, num_of_pages: 10, num_of_images: 100},site_count: 3 },
                        { name: "Agency", price: 29, desc: "", expire_after: 365, expire_type: "yearly", limitation: {num_of_projects: 999, num_of_pages: 999, num_of_images: 5000}, site_count: 10 },
                        { name: "Professional", price: 12, desc: "", expire_after: 365, expire_type: "yearly", limitation: {num_of_projects: 100, num_of_pages: 100, num_of_images: 1000},site_count: 5 },
                        { name: "Basic", price: 10, desc: "", expire_after: 365, expire_type: "yearly", limitation: {num_of_projects: 10, num_of_pages: 10, num_of_images: 100},site_count: 3 },
                        { name: "Trial", price: 0, desc: "", expire_after: 10, expire_type: "", limitation: {num_of_projects: 10, num_of_pages: 10, num_of_images: 10}, site_count: 1 }

                    ])
  end
end
