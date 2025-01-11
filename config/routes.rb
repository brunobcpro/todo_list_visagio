Rails.application.routes.draw do
  get 'lists/index'
  get 'lists/show'
  get 'lists/new'
  get 'lists/edit'
  resources :lists do
    resources :items, only: [:create, :destroy, :update]
  end
  root "lists#index"
end
