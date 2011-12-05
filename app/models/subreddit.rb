class Subreddit < ActiveRecord::Base
  belongs_to :created_by
  has_many :posts, :dependent => :destroy

  def to_param
    name
  end
end
