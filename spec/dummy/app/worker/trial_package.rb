class TrialPackage
  include Sidekiq::Worker

  def perform
    @package = Locomotive::Package.find_by(name: 'Trial')
    @package.account_packages.each do |obj|
      # mail to user
    end

  end
end