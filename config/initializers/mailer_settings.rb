ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.default :charset => "utf-8"
ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => 587,
    :domain => "babydorych-trans.com.ua",
    :authentication => "plain",
    :user_name =>  Admin::MailerSettings.instance.email,
    :password => Admin::MailerSettings.instance.password,
    :enable_starttls_auto => true
} if ActiveRecord::Base.connection.table_exists? 'admin_mailer_settings'

