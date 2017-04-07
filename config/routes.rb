Rails.application.routes.draw do
  
  root "static_pages#home"
  get "/home", to: "static_pages#home"
  get "/help", to: "static_pages#help", as: "help"
  get "/about", to: "static_pages#about", as: "about"
  get "/contact", to: "static_pages#contact", as: "contact"
  get "/signup",  to: "users#new"
  get "users/new"
end
