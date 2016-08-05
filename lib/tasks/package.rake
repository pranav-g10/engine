namespace :package do

  desc "packages creating"
  task create: :environment do
    Locomotive::Package.create!([
                        { name: "Agency", price: 29, desc: "", expire_after: 30, expire_type: "monthly", limitation: {projects: 999, pages: 999, images: 5000}, site_count: 10 },
                        { name: "Professional", price: 12, desc: "", expire_after: 30, expire_type: "monthly", limitation: {projects: 100, pages: 100, images: 1000},site_count: 5 },
                        { name: "Basic", price: 10, desc: "", expire_after: 30, expire_type: "monthly", limitation: {projects: 10, pages: 10, images: 100},site_count: 3 },
                        { name: "Agency", price: 19, desc: "", expire_after: 365, expire_type: "yearly", limitation: {projects: 999, pages: 999, images: 5000}, site_count: 10 },
                        { name: "Professional", price: 8, desc: "", expire_after: 365, expire_type: "yearly", limitation: {projects: 100, pages: 100, images: 1000},site_count: 5 },
                        { name: "Basic", price: 7, desc: "", expire_after: 365, expire_type: "yearly", limitation: {projects: 10, pages: 10, images: 100},site_count: 3 },
                        { name: "Trial", price: 0, desc: "", expire_after: 10, expire_type: "", limitation: {projects: 10, pages: 10, images: 10}, site_count: 1 }

                    ])
  end
end
