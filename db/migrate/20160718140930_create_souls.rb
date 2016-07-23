class CreateSouls < ActiveRecord::Migration
  def change
    create_table :souls do |t|
      t.string :name
      t.string :surname
      t.string :nickname
      t.date :born
      t.string :city
      t.string :mob_number
      t.string :facebook
      t.string :github
      t.string :linkid
      t.string :skype
      t.text :history
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
