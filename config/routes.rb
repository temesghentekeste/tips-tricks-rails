Rails.application.routes.draw do
  resources :cities
  resources :users
  resources :brands do 
    resources :products
  end
 
end
