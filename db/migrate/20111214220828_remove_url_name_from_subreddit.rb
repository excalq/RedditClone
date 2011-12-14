class RemoveUrlNameFromSubreddit < ActiveRecord::Migration
  def up
    remove_column :subreddits, :url_name
  end

  def down
    add_column :subreddits, :url_name, :string
  end
end
