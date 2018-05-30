module SessionsHelper

  def remember(user)
    session[:current_user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:current_user_id]) unless session[:current_user_id].nil?
  end

  def log_out
    @current_user = nil
    session.delete(:current_user_id)
  end

  def logged_in?
    !current_user.nil?
  end

end
