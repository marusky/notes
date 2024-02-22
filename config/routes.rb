Rails.application.routes.draw do
  get 'about', to: 'pages#about'


  get 'notes', to: 'notes#index'
  post 'notes', to: 'notes#create'
  get 'notes/new', to: 'notes#new'
  get 'notes/:id', to: 'notes#show', as: :note

  get 'items', to: 'items#index'
  get 'items/:id', to: 'items#show'

  root 'pages#home'
end
