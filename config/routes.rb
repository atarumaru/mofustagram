Rails.application.routes.draw do
  root 'posts#new'
  resources :posts, except: :show
end
