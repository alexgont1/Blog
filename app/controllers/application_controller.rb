class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

		private

		def configure_permitted_parameters
			devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :username) }
		end
end
