Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "listings", to: "pages#listings"
  # get "artwork", to: "pages#artwork"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :artworks, only: [:index, :new, :create, :show]
end
