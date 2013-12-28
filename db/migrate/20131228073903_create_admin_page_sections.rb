class CreateAdminPageSections < ActiveRecord::Migration
  def change
    create_table :admin_page_sections do |t|
      t.string :name
      t.string :lang

      t.timestamps
    end
  end
end
