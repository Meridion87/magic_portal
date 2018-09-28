class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception

  private

  # If your model is called User
  def after_sign_in_path_for(resource)
    session["user_return_to"] || root_path
  end
end
