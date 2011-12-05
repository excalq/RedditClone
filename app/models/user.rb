require 'digest/sha2'

class User < ActiveRecord::Base
  validates :username, :presence => true, :length => {:minimum => 3, :maximum => 32}
  

  def to_param
    username
  end

  def self.Authenticate(username, password)
    if user = User.find_by_username(username)
    # if Digest::SHA2.hexdigest(password)= user.password
      if password = user.password
        user
      end
    end
  end
end
