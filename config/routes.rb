Rails.application.routes.draw do
  get 'about', to: 'pages#about'
  get 'notes/show', to: 'notes#show'

  root 'pages#home'
end
