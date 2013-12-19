class Admin::Collaborator < ActiveRecord::Base
  attr_accessible :description, :full_name, :post
end
