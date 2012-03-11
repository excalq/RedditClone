# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111214220828) do

  create_table "comments", :force => true do |t|
    t.integer  "by_id",                     :null => false
    t.integer  "post_id",                   :null => false
    t.text     "body"
    t.integer  "up_votes",   :default => 0
    t.integer  "down_votes", :default => 0
    t.integer  "parent",     :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["by_id"], :name => "index_comments_on_by_id"
  add_index "comments", ["post_id"], :name => "index_comments_on_post_id"

  create_table "posts", :force => true do |t|
    t.string   "title",                           :null => false
    t.string   "type",                            :null => false
    t.string   "url"
    t.text     "body"
    t.boolean  "nsfw",         :default => false
    t.integer  "by_id",                           :null => false
    t.integer  "subreddit_id",                    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["by_id"], :name => "index_posts_on_by_id"
  add_index "posts", ["subreddit_id"], :name => "index_posts_on_subreddit_id"

  create_table "subreddits", :force => true do |t|
    t.string   "name",                              :null => false
    t.text     "description"
    t.string   "link_type",     :default => "both"
    t.boolean  "over_18",       :default => false
    t.boolean  "reported",      :default => false
    t.integer  "created_by_id",                     :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subreddits", ["created_by_id"], :name => "index_subreddits_on_created_by_id"

  create_table "users", :force => true do |t|
    t.string   "username",                     :null => false
    t.string   "password",                     :null => false
    t.string   "email"
    t.integer  "link_karma",    :default => 0
    t.integer  "comment_karma", :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
