Rails.application.routes.draw do
  resources :articles
  devise_for :users
  root to: "pages#home"
  resources :questions, only: :index
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
