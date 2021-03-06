Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users
  resources :mealplan#, only: [:index, :show]
  resources :recipes#, only: [:index, :show]
  resources :meals

  # Route to authenticate user 
  post '/users/authenticate', to: 'users#authenticate' 
  post '/create-account', to: 'users#create'
  get '/user/:id', to: 'users#show'
  
end

