FreeCandy::Application.routes.draw do
  devise_for :users
  resources :users, :only => :show
  resources :dan
  match 'video', to: 'home#video', via: :get

  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root to: 'home#index'
end
