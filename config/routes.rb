Rails.application.routes.draw do
  root "donuts#index"
  get "about/about"

  resources :donuts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
