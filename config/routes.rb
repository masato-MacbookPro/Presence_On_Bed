Rails.application.routes.draw do
  get 'word/index'
  get 'word/new'
  get 'word/edit'
  devise_for :users
  root to: "home#index"
  resources :users do
    resources :words
  end
end
