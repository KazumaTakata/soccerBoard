Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "users#index"
  resources :homes do
    resources :comments
  end
  resources :users

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
end
