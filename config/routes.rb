Rails.application.routes.draw do
  get "/user/:id" => "users#show"
  get "/new_user" => "users#new"
  get "/create_user" => "users#create"
  get "/user/:id/edit" => "users#edit"
  get "/edit_user/:id" => "users#edit_user"
  get "user/:id/destroy" => "users#destroy"
  get "/users/all" => "users#index"
  get "/error" => "users#error"
end
