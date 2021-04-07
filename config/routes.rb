Rails.application.routes.draw do
  get 'static_pages/help'
  get 'static_pages/about'
  root "articles#index"

  resources :users

  resources :articles do
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
