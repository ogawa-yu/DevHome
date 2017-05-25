Rails.application.routes.draw do
  get 'vending_machine/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :drinks
  resources :currencies
  root 'vending_machine#index'
end
