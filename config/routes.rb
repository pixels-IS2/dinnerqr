Rails.application.routes.draw do
  resources :specialities
  get 'menu/menu' => 'menu#menu'

  devise_for :clients
  resources :dishes
  devise_for :chefs, controllers: { sessions: 'chefs/sessions' }
  root 'welcome#index'

  get 'about' => 'aboutus#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
