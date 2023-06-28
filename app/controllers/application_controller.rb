class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  ##「ログインしていない人は全員ログインページに飛ばす！」の意味##
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position, :position])
  end
end
