class AddImageToGalleryItem < ActiveRecord::Migration
  def self.up
    add_attachment :admin_gallery_items, :image
  end

  def self.down
    remove_attachment :admin_gallery_items, :image
  end
end
