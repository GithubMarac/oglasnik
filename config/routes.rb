Rails.application.routes.draw do

  
  devise_for :users
  root to: "jobs#index"

  resources :jobs do
    resources :applications
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
