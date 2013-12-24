class CreateAdminPartners < ActiveRecord::Migration
  def change
    create_table :admin_partners do |t|
      t.string :link
      t.attachment :logo
    end
  end
end
