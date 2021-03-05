Rails.application.routes.draw do
  devise_for :users

  resources :answer_options, except: :index
  resources :questions, except: :index
  resources :registration_forms
  resources :vaccine_registrations

  root to: 'home#index'
end
