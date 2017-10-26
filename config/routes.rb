Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/kami', as: 'rails_admin'

  root 'welcome#index'
  #devise_for :chefs
  #devise_for :waiters
  #devise_for :administrators
  get 'order_views/currentOrderClient'

  get 'historyClient' => 'order_views#historyClient'

  get 'order_views/ordersChef'

  get 'order_views/orderWaiter'

  get 'order_views/sales'
  resources :orders
  resources :tables
  resources :specialities
  get 'menu' => 'menu#menu'

  devise_for :chefs, controllers: {
    registrations:'chefs/registrations',
    passwords: 'chefs/passwords'

  }

  devise_for :clients, controllers: { 
    registrations:"clients/registrations",
    omniauth_callbacks: 'clients/omniauth_callbacks',
    passwords: 'clients/passwords'
  }

  devise_for :waiters, controllers: {
    passwords: 'waiters/passwords',
   # sessions: 'waiters/sessions'
    registrations:"waiters/registrations"
  }

  devise_for :administrators, controllers: {
    passwords: 'administrators/passwords',
    registrations:"administrators/registrations"
  }

  resources :dishes do
    resources :comments, only: [:create, :destroy, :update]
  end
  
  get 'about' => 'aboutus#new', as: 'aboutus'
  post 'about' => 'aboutus#create'

  #devise_scope :administrators do
  #  post 'administrators/password/new', to: 'devise/passwords#new'
  #end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
