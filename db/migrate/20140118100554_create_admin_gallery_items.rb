class CreateAdminGalleryItems < ActiveRecord::Migration
  def change
    create_table :admin_gallery_items do |t|
      t.string :en_text
      t.string :de_text
      t.string :ru_text
      t.string :ua_text
      t.string :sk_text
      t.string :cz_text
      t.string :pl_text

      t.timestamps
    end
  end
end
