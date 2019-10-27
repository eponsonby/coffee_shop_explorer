Rails.application.routes.draw do
  get 'errors/not_found'
  get 'errors/internal_server_error'
  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  authenticated :user do
    root 'home#index', as: 'authenticated_root'
  end

  devise_scope :user do
    root 'devise/sessions#new'
  end

   
   resources :users, only: [:show] do
    resources :reviews, only: [:show, :index, :edit, :update, :destroy]
   end

   resources :shops, only: [:show, :new, :create, :edit, :update]

   resources :shops, only: [:show] do
    resources :reviews, only: [:new, :create]
   end


   resources :users, only: [:show] do
    resources :favorites, only: [:show, :index, :new, :create, :edit, :update, :destroy]
   end

   
end
