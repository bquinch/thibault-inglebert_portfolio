Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'components', to: 'pages#components'
  get 'render_modal', to: 'pages#render_modal', defaults: { format: :js }

  resources :projects do
    member do
      delete :delete_photo_attachment
    end
  end
  resources :messages, only: :create
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
