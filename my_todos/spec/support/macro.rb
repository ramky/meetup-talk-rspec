def set_current_user
  john              = create(:user)
  session[:user_id] = john.id
end

def current_user
  User.find(session[:user_id])
end

def reset_current_user
  session[:user_id] = nil
end
