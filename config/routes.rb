Rails.application.routes.draw do


  
  resources :three_pls do
    resources :regional_offices
  end

 
  devise_for :drivers

  resources :driver_profiles do
    resources :drivers
  end
  




  resources :shipments
  require 'sidekiq/web'
  require 'sidekiq/cron/web'
  


  # devise_for :drivers, path: 'drivers', controllers: { registrations: 'drivers/registrations'} 
  # resources :driver_profiles do
  #   resources :drivers
  # end

  # devise_for :admins, path: 'admins', controllers: { registrations: 'adnins/registrations'}

  resources :app_settings do
    resources :terminals
  end

  root 'pages#index' 
  get 'edit_theme', to: 'app_settings#edit_theme'

  mount Sidekiq::Web => '/sidekiq'

end
