Rails.application.routes.draw do
  resources :characters, only: %i[new create edit update]
  
  get "up" => "rails/health#show", as: :rails_health_check

  root "characters#new"
end
