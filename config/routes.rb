Rails.application.routes.draw do

  get 'votes/new'
  get 'votes/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :votes
  get '/survey', to: 'pages#survey'
  get '/complete', to: 'pages#complete'
  get 'results', to: 'pages#results'

  root to: '/survey', to: 'pages#survey'
end
