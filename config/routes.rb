Rails.application.routes.draw do
  resources :appointments, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]

  # Patient routes
  get '/patients', to: 'patients#index'
  post '/patients', to: 'patients#create'
  # POST request from /patients send to the patients controller, use create
  get '/patients/:id', to: 'patients#show'
  # GET request from /patients send to the patients controller, use show action
  patch '/patients/:id', to: 'patients#update'
  delete '/patients/:id', to: 'patients#destroy'

  resources :doctors, only: [:index]
  get '/doctors', to: 'doctors#index'
end
