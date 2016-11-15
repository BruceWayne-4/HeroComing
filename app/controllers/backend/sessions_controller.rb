module Backend
  class SessionsController < Backend::ApplicationController
    layout 'backend_auth'
    skip_before_action :current_admin?, only: [:sign, :signing]

    def signing
      _admin = Admin.find_by(mobile: params[:mobile])
      if _admin && _admin.authenticate(params[:password])
        session[:admin_auth_token] = _admin.auth_token
        redirect_to backend_root_path
      else
        redirect_back(fallback_location: root_path)
      end
    end

    def sign_out
      session[:admin_auth_token] = nil
      reset_session
      redirect_to backend_sign_path
    end
  end
end
