class AddAttachmentImgresumeToResumes < ActiveRecord::Migration
  def self.up
    change_table :resumes do |t|
      t.attachment :imgresume
    end
  end

  def self.down
    remove_attachment :resumes, :imgresume
  end
end
