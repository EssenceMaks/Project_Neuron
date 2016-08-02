class CreateQuotations < ActiveRecord::Migration
  def change
    create_table :quotations do |t|
      t.string :author
      t.text :proverb
      t.text :description
      t.string :datecomment
      t.date :created
      t.references :soul, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
