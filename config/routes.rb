Rails.application.routes.draw do
  get 'booking/new'
  post 'booking/create'
  get 'booking/new'
  get '/flights', to: 'flights#index'
  root to: 'flights#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
