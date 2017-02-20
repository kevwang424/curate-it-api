Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :galleries
      resources :pieces #, only:[]
      post 'signup', to: 'users#create'
      post 'login', to: 'sessions#create'
      post 'remove', to: 'gallery_pieces#destroy'
    end
  end
end
