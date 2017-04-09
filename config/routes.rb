Rails.application.routes.draw do

  get 'leads/index'

  resources :leads, only: [:index]
  resources :products
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "pages#home"
end
