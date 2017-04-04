class ApplicationController < ActionController::Base
  include SessionHelper
  include Pundit
  protect_from_forgery

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    redirect_to signin_path
  end

  def authorize_user
    authorize :user
  end
end
