Rails.application.routes.draw do
  resources :products
  resources :users, except: [:index, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
