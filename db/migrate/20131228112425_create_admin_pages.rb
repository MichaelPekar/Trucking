class CreateAdminPages < ActiveRecord::Migration
  def change
    create_table :admin_pages do |t|
      t.string :title
      t.text :content
      t.integer :section_id

      t.timestamps
    end
  end
end
