class CreateAdditionalEducations < ActiveRecord::Migration
  def change
    create_table :additional_educations do |t|
      t.text :academy
      t.belongs_to :suit, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
