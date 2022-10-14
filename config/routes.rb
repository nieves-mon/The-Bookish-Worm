Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "books#index"

  resources :books
  # get "/books", to: "books#index"
  # post "/books", to: "books#create"
  # get "/books/new", to: "books#new", as: "new_book"
  # get "/books/:id/edit", to: "books#edit", as: "edit_book"
  # get "/books/:id", to: "books#show", as: "book"
  # put "/books/:id", to: "books#update"
  # delete "/books/:id", to: "books#destroy"
end
