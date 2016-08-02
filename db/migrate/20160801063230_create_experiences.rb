class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.date :startdate
      t.string :datecomment
      t.date :enddate
      t.string :title
      t.text :description
      t.string :workplaceurl
      t.references :soul, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
