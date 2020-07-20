Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get 'auth/github/callback', to: 'sessions#create'

  root 'homepage#home'

  resources :users



  resources :devices


  resources :apps

end
