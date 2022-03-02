require 'open-uri'
Rails.application.routes.draw do
  root 'weird_animal_combo#index'
  get 'weird_animal_combo/index'
  get 'weird_animal_combo/show'
  get 'weird_animal_combo/new'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
