class CreateHobcomments < ActiveRecord::Migration
  def change
    create_table :hobcomments do |t|
      t.text :hobcontent
      t.references :hobby, index: true, foreign_key: true
      t.references :soul, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
