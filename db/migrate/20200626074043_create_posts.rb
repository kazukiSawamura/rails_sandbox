class CreatePosts < ActiveRecord::Migration[6.0]
  def up
    create_table :posts do |t|
      t.string :title
      t.integer :status_id, limit: 8, null: false, default: 1
      t.text :body
      t.text :fulltext
      t.timestamps
    end
    enable_extension :pgroonga
    add_index :posts, [:title, :body, :fulltext], name: :pgroonga_post_index, using: :pgroonga
  end
  def down
    drop_table :posts
  end
end