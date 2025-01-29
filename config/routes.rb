Rails.application.routes.draw do
  resources :horoscope_types
  resources :horoscopes
  resources :signs, only: [ :index, :show, :edit, :update ]
  resource :session
  resources :passwords, param: :token

  get "aries" => "home#aries"
  get "taurus" => "home#taurus"
  get "gemini" => "home#gemini"
  get "cancer" => "home#cancer"
  get "leo" => "home#leo"
  get "virgo" => "home#virgo"
  get "libra" => "home#libra"
  get "scorpio" => "home#scorpio"
  get "sagittarius" => "home#sagittarius"
  get "capricorn" => "home#capricorn"
  get "aquarius" => "home#aquarius"
  get "pisces" => "home#pisces"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "home#index"
end
