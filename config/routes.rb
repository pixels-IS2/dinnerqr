Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/kami', as: 'rails_admin'

  root 'welcome#index'
  #devise_for :chefs
  #devise_for :waiters
  #devise_for :administrators
  get 'order_views/currentOrderClient'

  get 'historyClient' => 'order_views#historyClient'

  get 'topDish' => 'order_views#topDish'
  #put 'order_views/ordersChef' => 'order_views#ordersChef'
  
  #resources :order_views do
  #  collection do
  #    get :ordersChef
  #  end
  #end
  
  get 'ordersChef' => 'order_views#ordersChef'
  
  resources :order_views do
    collection do
      put :preparated
      put :deliverated
    end
  end

  get 'orderWaiter'  => 'order_views#orderWaiter'
  
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
    passwords: 'clients/passwords',
    sessions: 'clients/sessions'
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

  resources :charts, only: [] do
    collection do
      get 'sales_by_dish'
    end
  end
  
  get 'about' => 'aboutus#new', as: 'aboutus'
  post 'about' => 'aboutus#create'

  get 'statistics' => 'statistics#show'

  resources :dishes do 
  member do
    put "like", to: "dishes#upvote"
    put "dislike", to: "dishes#downvote"
  end
end
  #devise_scope :administrators do
  #  post 'administrators/password/new', to: 'devise/passwords#new'
  #end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
