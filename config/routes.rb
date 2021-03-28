Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
  post "/login", to: "users#login"
  post "/signup", to: "users#signup"
  get "/myself", to: 'users#myself'
  patch "/myself", to: 'users#update_myself'
  
  
  
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'
  
  get '/workout_posts', to: 'workout_posts#index'
  get '/workout_posts/:id', to: 'workout_posts#show'
  post '/workout_posts', to: 'workout_posts#create'
  patch 'workout_posts/:id', to: 'workout_posts#update'
  delete 'workout_posts/:id', to: 'workout_posts#delete'

  get 'fav_posts', to: 'fav_posts#index'
  get 'fav_posts/:id', to: 'fav_posts#show'
  post 'fav_posts', to: 'fav_posts#create'
  delete 'fav_posts/:id', to: 'fav_posts#delete'


  get '/comments', to: 'comments#index'
  get '/comments/:id', to: 'comments#show'
  post '/comments', to: 'comments#create'
  patch '/comments/:id', to: 'comments#update'
  delete 'comments/:id', to: 'comments#delete'

end
