Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  namespace :v1 do
    get 'home/index'
    get 'home/private'
    get 'countries/index'
    get 'commerces/index'
    post 'commerces/create'
    get 'commerces/show/:id', to: 'commerces#show'
    get 'commerces/:id/edit', to: 'commerces#update'
    put 'commerces/:id/edit', to: 'commerces#update'
    delete 'commerces/:id/delete', to: 'commerces#destroy'
    get 'users/index'
    get 'users/show/:id', to: 'users#show'
  end
  root to: "v1/home#index"
end
