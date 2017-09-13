class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #redirects user to login page if not logged in
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  # override the devise default strong params
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :age])
  end
end
