Rails.application.routes.draw do
  resources :patients
  resources :appointments
  resources :doctors
  resources :contents

  root "dashboards#index"
end
