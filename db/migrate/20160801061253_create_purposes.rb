class CreatePurposes < ActiveRecord::Migration
  def change
    create_table :purposes do |t|
      t.string :purport
      t.text :description
      t.string :url
      t.references :soul, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_foreign_key :purposes, :soul
  end
end
