Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  authenticated :user do
    root 'home#index', as: 'authenticated_root'
  end

  devise_scope :user do
    root 'devise/sessions#new'
  end


   resources :shops
   
   resources :users, only: [:show] do
    resources :reviews, only: [:show, :index]
   end

   resources :users, only: [:show] do
    resources :favorites, only: [:show, :index]
   end


   resources :reviews, only: [:show, :new, :create, :edit, :update]
   resources :favorites, only: [:new, :create, :edit, :update]
end
