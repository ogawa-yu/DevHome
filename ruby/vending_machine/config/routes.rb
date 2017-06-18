Rails.application.routes.draw do
  #get 'vending_machine/index'
  post 'vending_machine/buy', to: 'vending_machine#buy'
  put 'drinks/:id/update', to: 'drinks#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :drinks
  resources :currencies
  resources :vending_machine
  root 'vending_machine#index'
end
