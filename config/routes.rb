Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "bienvenida", to: "home#index"
  
  root to: "home#index"

  resources :articles do
    get "user/:user_id", to:"articles#from_author", on: :collection
  end
  resources :categories

end
