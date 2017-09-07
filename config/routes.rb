Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: "users/sessions" }
  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html  Root to: index

end
