Rails.application.routes.draw do
  # get 'topics/new'
  # get 'sessions/new'
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :topics
  
  get 'comments/new'
  post '/comments', to: 'comments#create'
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorite', to: 'favorites#destroy'
  

end