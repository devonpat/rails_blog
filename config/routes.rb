Rails.application.routes.draw do
  
  root 'homes#index'
  resources :sessions, only: [:new, :create]
  delete '/sign_out' => 'sessions#destroy'
  resources :users
  resources :posts
  resources :comments

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
