class Order < ActiveRecord::Base
  attr_accessible :cargo, :company, :contact_person, :from_address, :start_date,
                  :to_address, :user_id, :captcha, :captcha_key, :phone, :string, :email, :additional_info
  belongs_to :user
  apply_simple_captcha
end
