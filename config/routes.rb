Rails.application.routes.draw do
  resources :addresses
  resources :adresses
  resources :people
  resources :cities
  resources :users
  resources :brands do 
    resources :products
  end
 
end
