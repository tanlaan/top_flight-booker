Rails.application.routes.draw do
  get 'flights/index'
  root to: "flights#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
