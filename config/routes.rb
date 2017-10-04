Rails.application.routes.draw do
  
  devise_for :chefs
  devise_for :waiters
  devise_for :administrators
  resources :orders
  resources :tables
  resources :specialities
  get 'menu' => 'menu#menu'
  post 'order' => 'menu#order'
  devise_for :clients, controllers: { registrations:"clients/registrations",omniauth_callbacks: 'clients/omniauth_callbacks'}
  resources :dishes do
    resources :comments, only: [:create, :destroy, :update]
  end
 # devise_for :chefs
  root 'welcome#index'

  get 'about' => 'aboutus#new', as: 'aboutus'
  post 'about' => 'aboutus#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
