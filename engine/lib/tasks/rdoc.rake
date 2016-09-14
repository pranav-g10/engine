require 'sdoc'
require 'rdoc/task'

namespace :doc do

  # namespace :preload do
  #
  #   desc 'Preload controllers in memory'
  #   task :controllers => :environment do
  #     Dir[Rails.root.join('app', 'controllers', 'api', 'v1', '{**}')].each do |file|
  #       next if file =~ /.*base_controller.rb$/
  #       require file
  #     end
  #   end
  #
  #   desc 'Preload models in memory'
  #   task :models => :environment do
  #     Dir[Rails.root.join('app', 'models', '{**}')].each do |file|
  #       require file
  #     end
  #   end
  #
  # end

  RDoc::Task.new(:rdoc => "api",
                 :clobber_rdoc => "api:clean",
                 :rerdoc => "api:force") do |rdoc|
    rdoc.main = "README.rdoc"
    rdoc.title = "API Documentation"
    rdoc.rdoc_files.include("README.rdoc")
    rdoc.rdoc_files.include("rdoc/*.rdoc")
    rdoc.rdoc_files.include("app/api/locomotive/docs/*.rb")
    # rdoc.options << '-x' << 'app/controllers/api/v1/base_controller.rb'
    # rdoc.options << '-x' << 'app/models/crap.rb'
    # rdoc.options << '-x' << 'app/models/ability.rb'
    # rdoc.options << '-x' << 'app/models/concerns/*'
    rdoc.options << '--op' << "#{Locomotive::Engine.root}.pages"
    rdoc.rdoc_dir = "#{Locomotive::Engine.root}.pages"
  end

  # desc 'Generate route documentation to rdoc/Routes.rdoc'
  # task :routes => [:environment, 'preload:controllers'] do
  #   File.open(Rails.root.join('rdoc', 'Routes.rdoc'), 'w') do |file|
  #     Rails.application.routes.routes.each do |route|
  #       verb = route.verb.source.gsub /\W/, ''
  #
  #       next if verb == 'PATCH'
  #
  #       path = route.path.spec.to_s
  #
  #       next unless path =~ /\/api\/v1/
  #
  #       controller = route.defaults[:controller]
  #       klass = "#{controller}_controller".camelize.constantize
  #
  #       file.puts "* {#{verb} #{path}}[link:#{klass.to_s.gsub(/::/,'/')}]\n"
  #       file.puts "\n"
  #     end
  #   end
  # end

end
