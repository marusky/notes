Rails.application.routes.draw do
  get 'about', to: 'pages#about'


  get 'notes', to: 'notes#index'
  post 'notes', to: 'notes#create'
  get 'notes/new', to: 'notes#new'
  get 'notes/:id', to: 'notes#show', as: :note

  get 'items', to: 'items#index'
  post 'items', to: 'items#create'
  get 'items/new', to: 'items#new'
  get 'items/:id', to: 'items#show', as: :item

  root 'pages#home'
end
