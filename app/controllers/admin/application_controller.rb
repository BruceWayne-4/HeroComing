module Admin
  class ApplicationController < ActionController::Base
    layout 'admin'
    protect_from_forgery with: :exception
  end
end
