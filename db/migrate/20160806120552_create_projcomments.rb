class CreateProjcomments < ActiveRecord::Migration
  def change
    create_table :projcomments do |t|
      t.text :projcontent
      t.references :project, index: true, foreign_key: true
      t.references :soul, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
