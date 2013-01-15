class AddAttachmentAvatarToContestants < ActiveRecord::Migration
  def self.up
    change_table :contestants do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :contestants, :avatar
  end
end
