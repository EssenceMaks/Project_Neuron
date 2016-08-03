class CreateHobbylists < ActiveRecord::Migration
  def change
    create_table :hobbylists do |t|
      t.text :hob_mark
      t.belongs_to :hobby, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
