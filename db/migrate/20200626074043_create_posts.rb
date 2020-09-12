class CreatePosts < ActiveRecord::Migration[6.0]
  def up
    create_table :posts do |t|
      t.string :title, null: false
      t.integer :status_id, limit: 8, null: false, default: 1
      t.text :body, null: false
      t.text :fulltext, null: false
      t.timestamps
      t.datetime :discarded_at
    end
    enable_extension :pgroonga
    add_index :posts, [:title, :body, :fulltext], name: :pgroonga_post_index, using: :pgroonga
    add_index :posts, :discarded_at
  end
  def down
    drop_table :posts
  end
end