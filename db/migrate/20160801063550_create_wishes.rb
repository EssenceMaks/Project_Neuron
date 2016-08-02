class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :title
      t.text :description
      t.string :url
      t.integer :wishescategory_id
      t.references :soul, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
