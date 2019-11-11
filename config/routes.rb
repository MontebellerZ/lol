Rails.application.routes.draw do
  
  get 'index/index'

  root to: "index#index"
  
  resources :playerroles
  resources :teams
  resources :roles
  resources :players
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
