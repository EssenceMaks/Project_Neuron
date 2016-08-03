class AddAttachmentImgpurposeToPurposes < ActiveRecord::Migration
  def self.up
    change_table :purposes do |t|
      t.attachment :imgpurpose
    end
  end

  def self.down
    remove_attachment :purposes, :imgpurpose
  end
end
