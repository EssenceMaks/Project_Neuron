class CreateQuotcomments < ActiveRecord::Migration
  def change
    create_table :quotcomments do |t|
      t.text :quotcontent
      t.references :quotation, index: true, foreign_key: true
      t.references :soul, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
