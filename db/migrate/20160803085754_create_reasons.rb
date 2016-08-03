class CreateReasons < ActiveRecord::Migration
  def change
    create_table :reasons do |t|
      t.text :reason
      t.belongs_to :resume, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
