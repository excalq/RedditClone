class Post < ActiveRecord::Base
  belongs_to :by
  belongs_to :subreddit
  has_many :comments, :dependent => :destroy
end
