class ApplicationController < ActionController::Base
  # include Pagy::Backend
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  def current_person
   if current_user
     current_user
   elsif current_administrator
     current_administrator
   else
     User.new
   end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email ])
  end

end
