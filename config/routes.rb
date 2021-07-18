Rails.application.routes.draw do
  get '/', to: 'opinions#index', as: :root
  post '/create_opinion', to: 'opinions#create', as: :new_opinion
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users, except: [:new]
  get '/follow/:followed_id', to: 'followings#create', as: :follow
  delete '/:followed_id', to: 'followings#destroy', as: :unfollow
end
