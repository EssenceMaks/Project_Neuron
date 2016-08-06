class CreateArtcomments < ActiveRecord::Migration
  def change
    create_table :artcomments do |t|
      t.text :artcontent
      t.references :article, index: true, foreign_key: true
      t.references :soul, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
