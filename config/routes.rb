Rails.application.routes.draw do
  resources :appointments
  resources :patients
  resources :doctors
  resources :contents

  root "dashboards#index"
end
