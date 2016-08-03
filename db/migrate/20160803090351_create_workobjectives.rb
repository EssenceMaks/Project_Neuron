class CreateWorkobjectives < ActiveRecord::Migration
  def change
    create_table :workobjectives do |t|
      t.text :objective
      t.belongs_to :resume, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
