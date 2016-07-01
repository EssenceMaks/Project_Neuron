class CreateInterestedIns < ActiveRecord::Migration
  def change
    create_table :interested_ins do |t|
      t.string :futureskill
      t.belongs_to :suit, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
