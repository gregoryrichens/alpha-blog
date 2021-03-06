Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#home"
  get "about", to: "pages#about"
  # resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  resources :articles # basically does the above - provides all restful routes
  get "signup", to: "users#new"
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'login', to: 'sessions#destroy'
end
