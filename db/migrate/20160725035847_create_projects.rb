class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_name
      t.text :project_description
      t.string :project_link
      t.string :project_team
      t.string :project_client

      t.timestamps null: false
    end
  end
end
