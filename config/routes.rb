Rails.application.routes.draw do
    devise_for :users, controllers: { sessions: "users/sessions" }
  root to: 'welcome#index'
  get 'about_us' => 'aboutus#about'
end
