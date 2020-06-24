# frozen_string_literal: true

Rails.application.routes.draw do
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  get '/products', to: 'products#index', as: 'showproducts'
  get '/products/new', to: 'products#new'
  get '/products/edit', to: 'products#edit'
  get '/products/:id', to: 'products#show', as: 'productos'
  post '/products/:id/edit', to: 'products#create'
  patch '/products/:id', to: 'products#update'
  delete '/products/:id', to: 'products#destroy'
end
