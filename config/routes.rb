Rails.application.routes.draw do
  get 'about', to: 'pages#about'


  get 'notes', to: 'notes#index'
  get 'notes/:id', to: 'notes#show'

  get 'items', to: 'items#index'
  get 'items/:id', to: 'items#show'

  root 'pages#home'
end
