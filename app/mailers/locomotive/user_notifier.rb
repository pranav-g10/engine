module Locomotive
    class UserNotifier < ActionMailer::Base

      default :from => 'shubhamjain.2303@gmail.com'

      def send_email(name, email, phone, message)
        @name = name
        @email = email
        @phone = phone
        @message = message
        mail( :to => "shubham.jain@iappstreet.com",
              :subject => 'Thanks for signing up for our amazing app' )
      end
    end

end