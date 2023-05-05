Rails.application.routes.draw do
  get "/users/:id" => "users#show"
  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
  get "/woofs" => "woofs#index"
  get "woofs/new" => "woofs#new"
  get "/woofs/:id" => "woofs#show"
  post "woofs" => "woofs#create"
  post "users/:id" => "relationships#create"
  delete "relationship/:id" => "relationships#destroy"
  
    resources :users do
      resources :relationships, only: [:create]
    end
    resources :relationships, only: [:destroy]

end
