class Admin::GalleryItem < ActiveRecord::Base
  attr_accessible :cz_text, :de_text, :en_text, :pl_text, :ru_text, :sk_text, :ua_text
end
