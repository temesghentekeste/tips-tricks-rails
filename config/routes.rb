Rails.application.routes.draw do
  resources :brands do 
    resources :products
  end
 
end
