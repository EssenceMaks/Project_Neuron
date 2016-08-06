class CreateQuotycomments < ActiveRecord::Migration
  def change
    create_table :quotycomments do |t|
      t.text :quotycontent
      t.references :quotation, index: true, foreign_key: true
      t.references :soul, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
