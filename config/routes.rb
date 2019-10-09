Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   resources :users
   
   resources :users, only: [:show] do
    resources :reviews, only: [:show, :index]
   end

   resources :reviews, only: [:index, :show, :new, :create, :edit, :update]
   resources :sessions, only: [:new, :create, :destroy]

   get '/login' => 'sessions#new', as: 'login'
   post '/login' => 'sessions#create'
   delete '/logout' => 'sessions#destroy'

end
