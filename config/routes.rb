Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations', sessions: 'users/sessions'}

  root to: "v1/home#index"

  namespace :v1 do
    get 'home/index'
    get 'home/private'
    get 'countries/index'
    get 'users/index'
    get 'users/show/:id', to: 'users#show'
  end

  namespace :v1 do
    get 'commerces/index'
    post 'commerces/create'
    get 'commerces/show/:id', to: 'commerces#show'
    put 'commerces/:id/edit', to: 'commerces#update'
    delete 'commerces/:id/delete', to: 'commerces#destroy'
  end

  namespace :v1 do
    get 'reservations/index'
    post 'reservations/create'
    get 'reservations/show/:id', to: 'reservations#show'
    put 'reservations/:id/edit', to: 'reservations#update'
    delete 'reservations/:id/delete', to: 'reservations#destroy'
  end

  namespace :v1 do
    get 'favorites/index'
    post 'favorites/create'
    get 'favorites/show/:id', to: 'favorites#show'
    delete 'favorites/:id/delete', to: 'favorites#destroy'
  end
end
