Rails.application.routes.draw do
  devise_for :users
  # get '/product', to: 'products#index'
  resources :products

  root 'static#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
