Rails.application.routes.draw do

  resources :recomendations
  resources :tables
  resources :dishes
  resources :orders
    devise_for :users, controllers: { sessions: "users/sessions" , registrations:"users/registrations"}
  root to: 'welcome#index'
  get 'about_us' => 'aboutus#about'
end
