Rails.application.routes.draw do

  root "articles#index"
  get 'help', to: 'static_pages#help'
  get 'about', to: 'static_pages#about'
  get 'contact', to: 'static_pages#contact'

  resources :users

  resources :articles do
    resources :comments
  end
end
