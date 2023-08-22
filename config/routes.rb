Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :boats
  get '/dashboard', to: 'users#dashboard', as: :user_dashboard
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
