Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users, controllers: { sessions: "users/sessions" }
  root to: 'welcome#index'
=======
  get 'aboutus/about'

>>>>>>> master
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  Root to: index
end
