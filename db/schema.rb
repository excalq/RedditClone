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

ActiveRecord::Schema.define(:version => 20111011024028) do

  create_table "comments", :force => true do |t|
    t.integer  "by_id"
    t.integer  "post_id"
    t.text     "body"
    t.integer  "up_votes"
    t.integer  "down_votes"
    t.integer  "parent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["by_id"], :name => "index_comments_on_by_id"
  add_index "comments", ["post_id"], :name => "index_comments_on_post_id"

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.string   "type"
    t.string   "url"
    t.text     "body"
    t.boolean  "nsfw"
    t.integer  "by_id"
    t.integer  "subreddit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["by_id"], :name => "index_posts_on_by_id"
  add_index "posts", ["subreddit_id"], :name => "index_posts_on_subreddit_id"

  create_table "subreddits", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "link_type"
    t.boolean  "over_18"
    t.boolean  "reported"
    t.integer  "created_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subreddits", ["created_by_id"], :name => "index_subreddits_on_created_by_id"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.integer  "link_karma"
    t.integer  "comment_karma"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
