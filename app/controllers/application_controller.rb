class ApplicationController < ActionController::Base
  # Changing the Forgery Protection Strategies to null_session from exception as its needed by the twilio calling api
  protect_from_forgery with: :null_session
  
  #protect_from_forgery with: :exception
  include SessionsHelper
end
