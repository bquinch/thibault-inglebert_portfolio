Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :projects, only: %i[index new edit create update destroy]
  resources :messages, only: :create
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
