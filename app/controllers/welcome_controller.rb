class WelcomeController < ApplicationController
  before_action :authorize_user

  def index; end
end
