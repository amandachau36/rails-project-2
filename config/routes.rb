Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/wishlists' => 'wishlists#index'

  delete '/wishlists/:id' => 'wishlists#destroy'

  # resources :wishlists
end
