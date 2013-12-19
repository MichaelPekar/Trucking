class Admin::Collaborator < ActiveRecord::Base
  attr_accessible :description, :full_name, :post, :avatar

  has_attached_file :avatar, :url => "/attachments/collaborators/:attachment/:class/:id/:style_:basename.:extension",
                    :styles => { :thumb => "300x300>",
                                 :small => "100x100>" },
                    :default_url => "missing.png"

end
