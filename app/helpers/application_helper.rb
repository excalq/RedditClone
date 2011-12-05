module ApplicationHelper

  def get_user_by_id(id)
    if id 
      @user = User.find(id)
      @user
    else
      nil
    end
  end

end
