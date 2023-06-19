Rails.application.routes.draw do
  devise_for :users
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
  devise_scope :user do
    get 'logout', to: 'devise/sessions#destroy', as: :logout
  end
end
