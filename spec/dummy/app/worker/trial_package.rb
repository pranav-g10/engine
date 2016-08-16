class TrialPackage
  include Sidekiq::Worker

  def perform
    @account_packages = Locomotive::AccountPackage.where({'days_left' => {'$gt' => 0}})
    @account_packages.each do |obj|
      obj.inc days_left: -1
      if obj.days_left < 2
        Locomotive::UserNotifier.notify_user(obj.actor.email, obj.days_left).deliver
      end
    end
  end
end