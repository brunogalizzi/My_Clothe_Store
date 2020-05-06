Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  resources :products, except: :index
  resources :users, except: [:index, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
