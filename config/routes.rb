Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resources :products
  resources :products do
    resources :subscribers, only: [ :create ]
  end
  resources :unsubscribe, only: [ :show ]
  root "products#index"
end
