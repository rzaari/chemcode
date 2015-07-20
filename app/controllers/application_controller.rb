class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception



  before_filter :configure_permitted_parameters, if: :devise_controller?

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password) }
        end

private

    # Confirms a logged-in user.
    def logged_in_user
      unless current_user
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

end
