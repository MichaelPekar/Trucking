class CreateAdminAboutAsPages < ActiveRecord::Migration
  def change
    create_table :admin_about_as_pages do |t|
      t.text :content
      t.string :lang

      t.timestamps
    end
  end
end
