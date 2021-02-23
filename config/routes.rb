Rails.application.routes.draw do
  resources :projects, only: [:create, :index, :show] do
    resources :comments, only: [:create, :index]
  end
  resources :users, only: [:create]
  post '/login', to: 'sessions#create'
  get '/authorize', to: 'sessions#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
