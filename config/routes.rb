Rails.application.routes.draw do
  get 'casa/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "casa#index"
end
