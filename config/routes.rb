Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :boats do
    resources :reviews, except: %i[index show destroy]
    resources :bookings, only: %i[create]
    resources :reviews, only: %i[create update]
  get '/dashboard', to: 'users#dashboard', as: :user_dashboard
end
