# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: %i[name father_name mother_name company_name designation country address phone_no Primary_skills
                                               pan_card adhar_card bank_name account_no password password_confirmation email role_id])
  end
end
