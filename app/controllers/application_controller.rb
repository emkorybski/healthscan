class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authenticate_user!
  def after_sign_in_path_for(user)
    health_cases_path # || request.referer || root_path
  end
end
