Rails.application.routes.draw do
  
  #devise_for :chefs
  #devise_for :waiters
  #devise_for :administrators
  get 'order_views/currentOrderClient'

  get 'historyClient' => 'order_views#historyClient'

  get 'order_views/ordersChef'

  get 'order_views/orderWaiter'

  get 'order_views/sales'

  devise_for :chefs
  devise_for :waiters
  devise_for :administrators
  resources :orders
  resources :tables
  resources :specialities
  get 'menu' => 'menu#menu'

  devise_for :chefs, controllers: {
    passwords: 'chefs/passwords'
  }

  devise_for :clients, controllers: { 
    registrations:"clients/registrations",
    omniauth_callbacks: 'clients/omniauth_callbacks',
    passwords: 'clients/passwords'
  }

  devise_for :waiters, controllers: {
    passwords: 'waiters/passwords'
  }

  devise_for :administrators, controllers: {
    passwords: 'administrators/passwords'
  }

  resources :dishes do
    resources :comments, only: [:create, :destroy, :update]
  end
  root 'welcome#index'
  get 'login' => 'welcome#login'
  get 'about' => 'aboutus#new', as: 'aboutus'
  post 'about' => 'aboutus#create'

  #devise_scope :administrators do
  #  post 'administrators/password/new', to: 'devise/passwords#new'
  #end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
