Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :boats do
    resources :reviews, only: %i[create update]
  end
  get '/dashboard', to: 'users#dashboard', as: :user_dashboard
end
