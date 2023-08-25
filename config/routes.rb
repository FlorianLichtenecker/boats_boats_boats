Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :boats do
    resources :reviews, except: %i[index show destroy]
    resources :bookings, only: %i[create]
    resources :reviews, only: %i[create update]

    collection do
      post :calculate_total_price, to: 'bookings#calculate_total_price'
    end
  end

  get '/dashboard', to: 'users#dashboard', as: :user_dashboard
  get '/booking_requests', to: 'users#booking_request_decision', as: :booking_requests
  post '/bookings/:id/accept', to: 'bookings#accept', as: 'booking_accept'
  post '/bookings/:id/reject', to: 'bookings#reject', as: 'booking_reject'
end
