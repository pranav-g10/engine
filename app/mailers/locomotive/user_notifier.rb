module Locomotive
    class UserNotifier < ActionMailer::Base

      default :from => 'pixlyz.com'

      def send_email(name, email, phone, message)
        @name = name
        @email = email
        @phone = phone
        @message = message
        mail( :to => "shubham.jain@iappstreet.com",
              :subject => 'Thanks for signing up for our amazing app' )
      end

      def notify_user(email, days_left)
        @email = email
        @days_left = days_left
        mail( :to => email,
              :subject => 'Notification about Plan' )
      end

      def send_invoice(email, file, file_name)
        @email = email
        attachments[file_name] = file
        mail to: email, subject: "invoice"
      end
    end

end