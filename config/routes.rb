Rails.application.routes.draw do
  root 'posts#index'
  devise_for :users 
  resources :users, only: [:index, :show]
  resources :posts, only: [:new, :create, :show] do
   resources :likes, only: [:create, :destroy]
  end
end
