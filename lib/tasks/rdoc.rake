require 'sdoc'
require 'rdoc/task'

namespace :doc do

  RDoc::Task.new(:rdoc => "api",
                 :clobber_rdoc => "api:clean",
                 :rerdoc => "api:force") do |rdoc|
    rdoc.main = "README.rdoc"
    rdoc.title = "API Documentation"
    rdoc.rdoc_files.include("README.rdoc")
    rdoc.rdoc_files.include("rdoc/*.rdoc")
    rdoc.rdoc_files.include("#{Rails.root}/api_docs/*.rb")
    rdoc.options << '--op' << "#{Locomotive::Engine.root}_pages"
    rdoc.rdoc_dir = "#{Locomotive::Engine.root}_pages"
  end

end
