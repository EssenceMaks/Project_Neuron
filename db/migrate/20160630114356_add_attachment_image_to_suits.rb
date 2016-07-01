class AddAttachmentImageToSuits < ActiveRecord::Migration
  def self.up
    change_table :suits do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :suits, :image
  end
end
