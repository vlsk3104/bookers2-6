class CreateBookComments < ActiveRecord::Migration[5.2]
  def change
    create_table :book_comments do |t|
      t.string :content
      t.references :user, foreign_key: true #外にいるお父さんとお母さんを外に探しに行ってください
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
