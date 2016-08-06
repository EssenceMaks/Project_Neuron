class CreateWishcomments < ActiveRecord::Migration
  def change
    create_table :wishcomments do |t|
      t.text :wishcontent
      t.references :wish, index: true, foreign_key: true
      t.references :soul, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
