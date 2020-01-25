Rails.application.routes.draw do
  resources :dogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    get '/dogs' => 'dogs#index'

    get '/dogs/new' => 'dogs#new'

    post '/dogs' => 'dogs#create'

    get '/dogs/:id' => 'dogs#show'

    put '/dogs/:id' => 'dogs#update'

    delete '/dogs/:id' => 'dogs#destroy'

    root to: 'dogs#new'
end
