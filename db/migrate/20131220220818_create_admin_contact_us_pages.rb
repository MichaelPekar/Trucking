class CreateAdminContactUsPages < ActiveRecord::Migration
  def change
    create_table :admin_contact_us_pages do |t|
      t.text :content
      t.string :lang

      t.timestamps
    end
  end
end
