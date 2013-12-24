class Admin::Partner < ActiveRecord::Base
  attr_accessible :link, :logo

  has_attached_file :logo, :url => "/attachments/partners/:attachment/:class/:id/:style_:basename.:extension",
                    :styles => { :thumb => "300x300>",
                                 :small => "100x100>" },
                    :default_url => "missing.png"

end
