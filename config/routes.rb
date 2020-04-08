Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :murals
  resources :users
  resources :favorites
  

  post '/signup', to: 'users#create', as: '/signup'
  post '/login', to: 'auths#create', as: '/login'
  get '/current_user', to: 'auths#show'
  get '/profile', to: 'users#profile'
  

end
