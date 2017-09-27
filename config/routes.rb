Rails.application.routes.draw do
  devise_for :clients, controllers: { registrations:"clients/registrations"}
  resources :dishes
 # devise_for :chefs
  root 'welcome#index'

  get 'about' => 'aboutus#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
