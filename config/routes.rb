Rails.application.routes.draw do

  get '/domain_token' => 'token#show'

  post 'user_token' => 'user_token#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/wishlists' => 'wishlists#index'

  delete '/wishlists/:id' => 'wishlists#destroy'

  post '/wishlists' => 'wishlists#add'

  post '/user' => 'users#create'

  # resources :wishlists
end
