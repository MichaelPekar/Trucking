class Order < ActiveRecord::Base
  attr_accessible :address, :cargo, :company, :contact_person, :from_address, :start_date, :to_address, :user_id
  belongs_to :user
end
