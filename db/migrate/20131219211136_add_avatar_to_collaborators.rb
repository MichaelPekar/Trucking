class AddAvatarToCollaborators < ActiveRecord::Migration
  def self.up
    add_attachment :admin_collaborators, :avatar
  end

  def self.down
    remove_attachment :admin_collaborators, :avatar
  end
end
