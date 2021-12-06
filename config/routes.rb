Rails.application.routes.draw do
  devise_for :users
  resources :home do
    collection do
      get :lp
      get :admin
    end
  end
  root to: "home#lp"
  resources :users do
    resources :words
  end
end
