class AddAttachmentImgwishToWishes < ActiveRecord::Migration
  def self.up
    change_table :wishes do |t|
      t.attachment :imgwish
    end
  end

  def self.down
    remove_attachment :wishes, :imgwish
  end
end
