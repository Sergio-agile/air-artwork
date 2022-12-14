Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "listings", to: "pages#listings"

  get "contact_us", to: "pages#contact_us"
  get "about_us", to: "pages#about_us"

  get "bookings", to: "pages#bookings"
  get "requests", to: "pages#requests"

  # get "artwork", to: "pages#artwork"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :artworks, only: [:index, :new, :create, :show] do
    resources :bookings, only: [:create, :update]
  end
  resources :bookmarks, only: ['destroy']
end
