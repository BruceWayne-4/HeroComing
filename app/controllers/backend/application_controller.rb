module Backend
  class ApplicationController < ActionController::Base
    layout 'backend'
    protect_from_forgery with: :exception

    before_action :current_admin?

    private

      def current_admin?
        redirect_to backend_sign_path if current_admin.blank?
      end

      def current_admin
        @current_admin ||= session[:admin_auth_token] && Admin.find_by(auth_token: session[:admin_auth_token])
      end

      helper_method :current_admin
  end
end
