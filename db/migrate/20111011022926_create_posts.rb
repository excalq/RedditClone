class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, :null => false
      t.string :type, :null => false
      t.string :url
      t.text :body
      t.boolean :nsfw, :default => false
      t.references :by, :null => false
      t.references :subreddit, :null => false

      t.timestamps
    end
    add_index :posts, :by_id
    add_index :posts, :subreddit_id
  end
end
