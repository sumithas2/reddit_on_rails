Rails.application.routes.draw do
 

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :pages
  resources :links

  root :to => "pages#index"
end
