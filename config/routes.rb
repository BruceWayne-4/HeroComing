Rails.application.routes.draw do
  namespace :backend, path: 'admin' do
    root 'home#index'
    get 'sign' => 'sessions#sign'
    post 'signing' => 'sessions#signing'
    delete 'sign_out' => 'sessions#sign_out'
  end

  namespace :site, path: '' do
  end

  root 'site/home#index'
end
