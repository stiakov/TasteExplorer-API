class ApplicationController < ActionController::API
  before_action :configure_permitted_parameters, if: :devise_controller?
  include JsonapiErrorsHandler
  rescue_from ::StandardError, with: lambda { |e| handle_error(e) }

  def unauthorized
    raise JsonapiErrorsHandler::Errors::Unauthorized
  end

  def forbidden
    raise JsonapiErrorsHandler::Errors::Forbidden
  end

  def not_found
    raise JsonapiErrorsHandler::Errors::NotFound
  end

  def no_valid
    puts '----- NO VALID -----'
    raise JsonapiErrorsHandler::Errors::Invalid
  end

  def standard_error
    raise JsonapiErrorsHandler::Errors::StandardError
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name mobile])
  end
end
