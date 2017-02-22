Rails.application.routes.draw do
  root "welcome#index"
  namespace :api do
    namespace :v1 do
      resources :users
      resources :galleries
      resources :pieces
      post 'signup', to: 'users#create'
      post 'login', to: 'sessions#create'
      post 'remove', to: 'gallery_pieces#destroy'
    end
  end
end
