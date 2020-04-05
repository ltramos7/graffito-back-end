Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :murals
  resources :users
  

  post '/signup', to: 'users#create', as: '/signup'
  # post '/login', to : 'users#create', as: '/login'
  get '/profile', to: 'users#profile'
  

end
