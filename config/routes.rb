Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  namespace :v1 do
    get 'home/index'
    get 'home/private'
  end
  root to: "v1/home#index"
end
