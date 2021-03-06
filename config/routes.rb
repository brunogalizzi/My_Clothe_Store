Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  resources :products, except: :index
  resources :users, except: [:index, :destroy]
  resources :carts
  resources :cart_products, only: [:create, :destroy]
  get "/pagamento", to: 'carts#pagamento', as: 'pagamento'
  get '/resumo', to: 'carts#resumo', as: 'resumo'
  get '/blusas', to: 'types#blusas', as: 'blusas'
  get '/sapatos', to: 'types#sapatos', as: 'sapatos'
  get '/products/set_type/:type_id', to: 'products#set_type'
  delete '/carts/:cart_id', to: 'carts#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
