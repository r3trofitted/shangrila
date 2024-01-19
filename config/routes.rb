Rails.application.routes.draw do
  resources :characters, except: %i[index destroy]

  get "up" => "rails/health#show", as: :rails_health_check

  root "characters#new"
end
