module Site
  class ApplicationController < ActionController::Base
    layout 'site'
    protect_from_forgery with: :exception
  end
end
