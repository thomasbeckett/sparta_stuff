Rails.application.routes.draw do
  # get 'post/index'
  # get 'post/new'
  # get 'post/show'
  # get 'post/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'posts#index'

  resources :posts do
    resources :comments, :except => [:index, :show, :new]
  end
end
