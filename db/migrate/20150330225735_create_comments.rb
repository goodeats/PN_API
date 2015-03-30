class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.string :body
      t.belongs_to :article, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :articles
  end
end
