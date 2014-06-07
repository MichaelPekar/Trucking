class Order < ActiveRecord::Base
  attr_accessible :cargo, :company, :contact_person, :from_address, :start_date,
                  :to_address, :user_id, :captcha, :captcha_key, :phone, :email, :additional_info
  belongs_to :user
  apply_simple_captcha

  validates_presence_of :cargo, :company, :contact_person, :from_address,
                       :to_address, :phone, :email, message: I18n.t('validation_errors.blank')
  validates :email, :email => true

  after_save :send_notification

  private

  def send_notification
    OrderMailer.accept_order(self).deliver
  end
end
