class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :company
      t.string :contact_person
      t.string :address
      t.string :cargo
      t.string :from_address
      t.string :to_address
      t.datetime :start_date
      t.references :user

      t.timestamps
    end
  end
end
