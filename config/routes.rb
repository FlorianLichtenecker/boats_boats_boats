Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :boats do
    resources :reviews, except: %i[index show destroy]
  end
  get '/dashboard', to: 'users#dashboard', as: :user_dashboard
end