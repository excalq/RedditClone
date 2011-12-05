class CreateSubreddits < ActiveRecord::Migration
  def change
    create_table :subreddits do |t|
      t.string :url_name, :null => false, :unique => true
      t.string :name, :null => false
      t.text :description
      t.string :link_type, :default => "both"
      t.boolean :over_18, :default => false
      t.boolean :reported, :default => false
      t.references :created_by, :null => false

      t.timestamps
    end
    add_index :subreddits, :created_by_id
  end
end
