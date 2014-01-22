class UpdateOrder < ActiveRecord::Migration
  def up
    remove_column :orders, :address
    add_column :orders, :phone, :string
    add_column :orders, :email, :string
    add_column :orders, :additional_info, :text
  end

  def down
    add_column :orders, :address, :text
    remove_column :orders, :phone
    remove_column :orders, :email
    remove_column :orders, :additional_info
  end
end
