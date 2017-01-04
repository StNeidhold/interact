class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:gender_id, :college_id, :business_school_id, :status_id, :user_privacy_setting_id])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:gender_id, :college_id, :business_school_id, :status_id, :user_privacy_setting_id])
  end
end
