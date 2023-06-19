Rails.application.routes.draw do
  resources :application_forms
  resources :cages
  resources :shelters
  resources :animals
  resources :species
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "shelters#index"
  get "/employees", to: "employees#index"
  get "/cages", to: "cages#index"
  get "/animals", to: "animals#index"
  get "/species", to: "species#index"
  get "/application_forms", to: "application_forms#index"
end
