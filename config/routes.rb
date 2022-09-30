Rails.application.routes.draw do
  devise_for :user, controllers:{
    registrations: "user/registrations",
    sessions:      "user/sessions"
  }

  devise_for :admin, controllers:{
    registrations: "admin/registrations",
    sessions:      "admin/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
