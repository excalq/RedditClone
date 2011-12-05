class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :by, :null => false
      t.references :post, :null => false
      t.text :body
      t.integer :up_votes, :default => 0
      t.integer :down_votes, :default => 0
      t.integer :parent, :default => 0

      t.timestamps
    end
    add_index :comments, :by_id
    add_index :comments, :post_id
  end
end
