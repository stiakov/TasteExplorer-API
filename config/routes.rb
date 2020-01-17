Rails.application.routes.draw do
  namespace :v1 do
    get 'home/index'
  end
  root to: "v1/home#index"
end
