class AddLangToAdminCollaborators < ActiveRecord::Migration
  def change
    add_column :admin_collaborators, :lang, :string
    Admin::Collaborator.all.each do |collaborator|
      collaborator.update_attribute :lang, 'ua'
    end
  end
end
