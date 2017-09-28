Rails.application.routes.draw do
  devise_for :waiters
  devise_for :administrators
  resources :orders
  resources :tables
  resources :specialities
  get 'menu' => 'menu#menu'
  devise_for :clients, controllers: { registrations:"clients/registrations",omniauth_callbacks: 'clients/omniauth_callbacks'}
  resources :dishes
  devise_for :chefs, controllers: { sessions: 'chefs/sessions' }
  root 'welcome#index'

  get 'about' => 'aboutus#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
