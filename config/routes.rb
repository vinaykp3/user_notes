Rails.application.routes.draw do
  root "notes#index"

  resources :notes
  
  # get "notes/new", "notes#new"
  # post "notes/create", "notes#create"
end
