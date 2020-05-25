Rails.application.routes.draw do
  devise_for :models
  resources :bubbles
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "welcome#index"

  resources :docs
end
