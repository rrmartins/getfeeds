Rails.application.routes.draw do
  resources :feeds
  devise_for :users

  root to: "home#index"
end
