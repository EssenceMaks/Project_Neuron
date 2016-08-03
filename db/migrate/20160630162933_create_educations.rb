class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.text :college
      t.belongs_to :resume, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
