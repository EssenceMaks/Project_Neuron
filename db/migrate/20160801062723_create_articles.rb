class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.string :url
      t.integer :articlecategory_id
      t.references :soul, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_foreign_key :articles, :soul
  end
end
