Rails.application.routes.draw do
  devise_for :users
  #devise_for :sessions
  resources :docs
  authenticated :user do
    root "docs#index", as:"authenticated_route"
  end
  get 'welcome/index'
  
  root "welcome#index"
end
