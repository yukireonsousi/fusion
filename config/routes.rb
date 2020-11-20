Rails.application.routes.draw do
  
  # get 'mypages/index'
  root 'pages#index'
  get 'pages/show'
  
  devise_for :users

  resources :baggages do
    member do
      get 'delivery_data'
      post 'toggle'
    end
  end

  resources :users #do
  #   collection do
  #     patch '/:id/user_private' => 'users#user_private'
  #   end
  # end
    namespace :admin do
      resources :baggages do
      end
    end
  
  
end
