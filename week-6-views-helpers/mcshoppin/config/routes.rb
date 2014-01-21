Mcshoppin::Application.routes.draw do
  resources :products do 
    resources :items
  end

  root to: 'products#index'
end
