class CreateAdminMailerSettings < ActiveRecord::Migration
  def change
    create_table :admin_mailer_settings do |t|
      t.string :email
      t.string :password
    end
  end
end
