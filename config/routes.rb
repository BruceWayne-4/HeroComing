Rails.application.routes.draw do
  namespace :admin do
    root 'home#index'
  end

  namespace :site, path: '' do
  end

  root 'site/home#index'
end
