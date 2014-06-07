require 'singleton'

class Admin::MailerSettings < ActiveRecord::Base
  include Singleton
  attr_accessible :email, :password
end
