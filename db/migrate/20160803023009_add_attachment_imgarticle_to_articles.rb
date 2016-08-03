class AddAttachmentImgarticleToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :imgarticle
    end
  end

  def self.down
    remove_attachment :articles, :imgarticle
  end
end
