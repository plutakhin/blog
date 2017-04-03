# ApplicationController
class ApplicationController < ActionController::Base
  include SecurityHelper
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  layout 'main'
  protect_from_forgery

  private

  def user_not_authorized
    redirect_to login_path
  end

  def authorize_user
    authorize :user
  end
end
