class CreateMySkills < ActiveRecord::Migration
  def change
    create_table :my_skills do |t|
      t.string :skill
      t.belongs_to :resume, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
