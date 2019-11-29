class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.references :category, foreign_key: true

      t.timestamps
    end
    add_index :posts, [:category_id, :created_at]
  end
end
