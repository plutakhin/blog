module SessionHelper
  def sign_in(user)
    session[:user_id] = user.id
  end

  def sign_out
    session[:user_id] = nil
  end

  def authenticated?
    current_user.present?
  end

  def authenticate_user!
    redirect_to signin_path unless authenticated?
  end

  def current_user
    return session[:user_id].nil?
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def current_user?(user)
    current_user == user
  end
end
