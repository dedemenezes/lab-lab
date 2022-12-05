Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :articles
  devise_for :users
  root to: "pages#home"
  resources :questions, only: %i[index show]
  resources :user_answers, only: :create

  get '/sobre', to: 'pages#sobre', as: :sobre
  get '/about', to: 'projects#show', as: :about
  # resources :projects, only: :show, as: :about, path: :about

end
