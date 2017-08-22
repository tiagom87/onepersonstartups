Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :categories, only: [:index, :show]
  resources :startups, only: [:index, :show, :new, :create]

  get "thankyou/:guid", to: "startups#thankyou", as: "thankyou"

  root 'startups#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
