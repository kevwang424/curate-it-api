Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :galleries
      resources :pieces #, only:[]
      post 'signup', to: 'users#create'
    end
  end
end
