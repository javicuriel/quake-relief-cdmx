Rails.application.routes.draw do
  namespace :admin do
    resources :tweets

    root to: "tweets#index"
  end

  resources :neighborhoods, only: [:show]
  resources :needs, only: [] do
    get :by_location, on: :collection
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'static_pages#index'
end
