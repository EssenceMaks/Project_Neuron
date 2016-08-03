class CreateProjectteams < ActiveRecord::Migration
  def change
    create_table :projectteams do |t|
      t.string :team
      t.belongs_to :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
