Rails.application.routes.draw do
  get 'help', to: 'static_pages#help'
  get 'about', to: 'static_pages#about'
  root "articles#index"

  resources :users

  resources :articles do
    resources :comments
  end
end
