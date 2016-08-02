class CreateHobbies < ActiveRecord::Migration
  def change
    create_table :hobbies do |t|
      t.string :title
      t.text :description
      t.string :url
      t.integer :hobbiescategory_id
      t.references :soul, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_foreign_key :hobbies, :soul
  end
end
