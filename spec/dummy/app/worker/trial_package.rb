class TrialPackage
  include Sidekiq::Worker

  def perform
    @package = Locomotive::Package.find_by(name: 'Trial')
    @package.account_packages.each do |obj|
      obj.inc days_left: -1
      if obj.days_left < 2
        Locomotive::UserNotifier.notify_user(obj.actor.email, obj.days_left).deliver
      end
    end

  end
end