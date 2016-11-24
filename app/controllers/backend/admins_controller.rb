module Backend
  class AdminsController < Backend::ApplicationController
    def index
      @admins = Admin.all.page(params[:page]).per(10)
    end
  end
end
