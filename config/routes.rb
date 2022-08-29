Rails.application.routes.draw do
  
  root 'home#index'
  devise_for :users
    resources :students do
      get :update_status, on: :member
      patch :update_status, on: :member
      #get :edit_status, on: :member
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end 
