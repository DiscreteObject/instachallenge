Instachallenge::Application.routes.draw do
  root 'pages#main'

  get 'search', to: 'queries#create'

  resources :photos, only: [:create, :show]

  resources :queries, only: [:create, :show]
end
