class CreateAdminAboutUsPages < ActiveRecord::Migration
  def change
    create_table :admin_about_us_pages do |t|
      t.text :content
      t.string :lang

      t.timestamps
    end
  end
end
