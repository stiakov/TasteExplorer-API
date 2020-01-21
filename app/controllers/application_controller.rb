class ApplicationController < ActionController::API
  before_action :configure_permitted_parameters, if: :devise_controller?
  include JsonapiErrorsHandler
  rescue_from ::StandardError, with: lambda { |e| handle_error(e) }

  def unauthorized
    JsonapiErrorsHandler::Errors::Unauthorized
  end

  def forbidden
    JsonapiErrorsHandler::Errors::Forbidden
  end

  def not_found
    JsonapiErrorsHandler::Errors::NotFound
  end

  def no_valid
    JsonapiErrorsHandler::Errors::Invalid
  end

  def standard_error
    JsonapiErrorsHandler::Errors::StandardError
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name mobile])
  end
end
