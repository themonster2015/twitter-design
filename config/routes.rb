Rails.application.routes.draw do
  get '/', to: 'opinions#index', as: :root
  post '/create_opinion', to: 'opinions#create', as: :new_opinion
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users, except: [:new]
  get '/follow/:followed_id', to: 'friendships#create', as: :follow
  delete '/:followed_id', to: 'friendships#destroy', as: :unfollow
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
