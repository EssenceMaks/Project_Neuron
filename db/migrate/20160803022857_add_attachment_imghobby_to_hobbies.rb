class AddAttachmentImghobbyToHobbies < ActiveRecord::Migration
  def self.up
    change_table :hobbies do |t|
      t.attachment :imghobby
    end
  end

  def self.down
    remove_attachment :hobbies, :imghobby
  end
end
