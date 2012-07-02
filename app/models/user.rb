require 'digest'

class User < ActiveRecord::Base
  validates :username, :presence => true, :length => {:minimum => 3, :maximum => 32}
  

  def to_param
    username
  end

  def self.Authenticate(username, password)
    logger.error "#{username} #{password} #{Digest::SHA256.hexdigest(password)}"
    if user = User.find_by_username(username)
    if Digest::SHA256.hexdigest(password).eql? user.password
        user
      end
    end
  end
end
