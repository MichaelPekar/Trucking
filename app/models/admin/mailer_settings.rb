require 'singleton'

class Admin::MailerSettings < ActiveRecord::Base
  acts_as_singleton
  attr_accessible :email, :password
  after_save :update_mailer_settings

  private

  def update_mailer_settings
    ActionMailer::Base.smtp_settings[:user_name] = email
    ActionMailer::Base.smtp_settings[:password] = password
  end
end
