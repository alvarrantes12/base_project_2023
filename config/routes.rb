Rails.application.routes.draw do
  resources :appointments
  resources :patienes
  resources :doctors
  resources :contents

  root "dashboards#index"
end
