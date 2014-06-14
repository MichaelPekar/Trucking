class Admin::GalleryItem < ActiveRecord::Base
  attr_accessible :cz_text, :de_text, :en_text, :pl_text, :ru_text, :sk_text, :ua_text, :image

  has_attached_file :image, :url => "/attachments/gallery_item_images/:attachment/:class/:id/:style_:basename.:extension",
                    :styles => { :original => "1200x380#" },
                    :default_url => "missing.png"

  def text
    send("#{ I18n.locale }_text")
  end

end
