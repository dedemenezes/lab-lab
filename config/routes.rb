Rails.application.routes.draw do
  resources :articles
  devise_for :users
  root to: "pages#home"
  resources :questions, only: :index
  resources :user_answers, only: :create

  get '/sobre', to: 'pages#sobre', as: :sobre
end
