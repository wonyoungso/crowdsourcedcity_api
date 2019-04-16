class ApplicationController < ActionController::Base 
  protect_from_forgery
  helper_method :current_user, :logged_in?

  def login_required
    if !logged_in?
      redirect_to admin_login_path, :alert => 'You must be authenticated to access administrator page.'
    end
  end

  def current_user  
    @current_user ||= User.find(session[:user_id]) if session[:user_id]  
  end 

  def current_user= user
    session[:user_id] = user.is_a?(User) ? user.id : nil
    @current_user = user
  end


  def logged_in?
    current_user.present? and current_user.is_a?(User)
  end
end
