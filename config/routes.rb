Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "about", to: "pages#about"
  get "home", to: "pages#homepage"
  root to: "pages#homepage"
  # get "posts/new", to: "posts#new"

  resources :posts do
    resources :posts #, only: [:show, :new, :create, :edit, :delete]
  end

end
