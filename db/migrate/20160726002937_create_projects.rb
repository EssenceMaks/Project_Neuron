class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :url
      t.string :team
      t.string :client
      t.references :soul, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_foreign_key :projects, :souls
  end
end
