Rails.application.routes.draw do
  resources :patients
  resources :appointments
  resources :doctors
  resources :contents
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"'
  root "dashboards#index"
end
