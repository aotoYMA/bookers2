Rails.application.routes.draw do
  devise_for :users
  get '/top' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'homes/about',to:  'homes#about', as: 'about'
  resources :books, only: [:new, :create, :destroy, :index, :show, :destroy, :edit, :update,]
  resources :users, only: [:show, :edit,:updte]

  patch 'books/:id' => 'books#update', as: 'update_book'
end
