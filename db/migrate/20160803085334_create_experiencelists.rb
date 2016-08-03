class CreateExperiencelists < ActiveRecord::Migration
  def change
    create_table :experiencelists do |t|
      t.text :exp_mark
      t.belongs_to :experience, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
