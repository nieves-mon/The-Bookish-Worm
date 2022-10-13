Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "books#index"

  get "/books", to: "books#index"
  get "/books/:id", to: "books#show", as: "book"
end
