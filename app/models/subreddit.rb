class Subreddit < ActiveRecord::Base
  belongs_to :created_by
  has_many :posts, :dependent => :destroy
  validates_uniqueness_of :name
  validates_format_of :name, :with => /^[A-Za-z\d_]+$/

  def to_param
    name
  end
end
