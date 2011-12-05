class Comment < ActiveRecord::Base
  belongs_to :by
  belongs_to :post
end
