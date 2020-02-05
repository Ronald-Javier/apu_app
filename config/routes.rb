Rails.application.routes.draw do
  resources :breastfeedings
  resources :babies


  root 'babies#index'
end
