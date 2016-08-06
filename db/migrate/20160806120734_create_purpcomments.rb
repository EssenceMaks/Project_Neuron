class CreatePurpcomments < ActiveRecord::Migration
  def change
    create_table :purpcomments do |t|
      t.text :purpcontent
      t.references :purpose, index: true, foreign_key: true
      t.references :soul, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
