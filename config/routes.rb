Rails.application.routes.draw do
  devise_for :users
  get 'casa/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "casa#index"
end