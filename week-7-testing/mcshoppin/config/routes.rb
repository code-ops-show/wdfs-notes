Mcshoppin::Application.routes.draw do
  devise_for :users
  resources :products do 
    resources :items
  end

  resource :cart

  root to: 'products#index'
end
