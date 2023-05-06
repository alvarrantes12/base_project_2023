Rails.application.routes.draw do
  resources :appointments
  resources :patients
  resources :doctors
  resources :contents
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"'
  root "dashboards#index"
end
def destroy
  @appointment = Appointment.find(params[:id])
  @appointment.destroy
  redirect_to appointments_path, notice: t('application.deleted')
end
