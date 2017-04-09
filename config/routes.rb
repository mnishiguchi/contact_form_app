Rails.application.routes.draw do

  resource :contact

  resources :leads, only: [:index]

  resources :products do
    member do
      resource :appointment, module: "products", only: [:show, :create]
    end
  end

  resources :users

  root "pages#home"
end
