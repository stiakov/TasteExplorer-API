class ApplicationController < ActionController::API
  before_action :configure_permitted_parameters, if: :devise_controller?
  include JsonapiErrorsHandler
  rescue_from ::StandardError, with: lambda { |e| handle_error(e) }

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name mobile])
  end
end
