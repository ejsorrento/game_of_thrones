Rails.application.routes.draw do
  resources :houses
  resources :characters


  root 'welcome#index'

end
