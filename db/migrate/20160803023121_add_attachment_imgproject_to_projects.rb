class AddAttachmentImgprojectToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :imgproject
    end
  end

  def self.down
    remove_attachment :projects, :imgproject
  end
end
