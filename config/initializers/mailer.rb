ActionMailer::Base.smtp_settings = {
    :address        => 'smtp.sendgrid.net',
    :port           => '587',
    :authentication => :plain,
    :user_name      => "shubham_2303",
    :password       => "Shubham_23",
    :domain         => 'localhost:3000',
    :enable_starttls_auto => true
}
