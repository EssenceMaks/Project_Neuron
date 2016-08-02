class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :suitname
      t.text :suitdescription
      t.string :workmail
      t.boolean :onlineswitch, null: true
      t.integer :suitcategory_id
      t.references :soul, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
