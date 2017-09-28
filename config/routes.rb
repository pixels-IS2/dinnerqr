Rails.application.routes.draw do
  resources :specialities
  get 'menu/menu' => 'menu#menu'

  devise_for :clients
  resources :dishes
 # devise_for :chefs
  root 'welcome#index'

  get 'welcome/index'

  get 'aboutus/about' => 'aboutus#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
