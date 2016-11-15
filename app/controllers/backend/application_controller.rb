module Backend
  class ApplicationController < ActionController::Base
    layout 'backend'
    protect_from_forgery with: :exception
  end
end
