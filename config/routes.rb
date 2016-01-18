Rails.application.routes.draw do
  devise_for :users
  resources :posts
  # get "welcome#index"
  root to: "welcome#index"
end
