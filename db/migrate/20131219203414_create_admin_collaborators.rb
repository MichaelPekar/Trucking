class CreateAdminCollaborators < ActiveRecord::Migration
  def change
    create_table :admin_collaborators do |t|
      t.string :full_name
      t.string :post
      t.text :description

      t.timestamps
    end
  end
end
