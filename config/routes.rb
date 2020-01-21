Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  namespace :v1 do
    get 'home/index'
    get 'home/private'
    get 'countries/index'
    get 'commerces/index'
    get 'commerces/show/:id', to: 'commerces#show'
    get 'users/index'
    get 'users/show/:id', to: 'users#show'
  end
  root to: "v1/home#index"
end
