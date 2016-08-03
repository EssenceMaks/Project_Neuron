class AddAttachmentImgsoulToSouls < ActiveRecord::Migration
  def self.up
    change_table :souls do |t|
      t.attachment :imgsoul
    end
  end

  def self.down
    remove_attachment :souls, :imgsoul
  end
end
