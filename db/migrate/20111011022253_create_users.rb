class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :null => false, :unique => true
      t.string :password, :null => false
      t.string :email
      t.integer :link_karma, :default => 0
      t.integer :comment_karma, :default => 0

      t.timestamps
    end
  end
end
