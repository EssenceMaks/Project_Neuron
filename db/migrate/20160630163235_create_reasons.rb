class CreateReasons < ActiveRecord::Migration
  def change
    create_table :reasons do |t|
      t.text :motivation
      t.belongs_to :suit, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
