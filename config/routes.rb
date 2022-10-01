Rails.application.routes.draw do
  get 'home' => "homes#top"

  root to: "homes#top"


  devise_for :user, controllers:{
    registrations: "user/registrations",
    sessions:      "user/sessions"
  }

  devise_for :admin, controllers:{
    registrations: "admin/registrations",
    sessions:      "admin/sessions"
  }
  
  resources :users, only: [:index, :show, :edit, :update] 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
