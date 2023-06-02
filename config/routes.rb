Rails.application.routes.draw do
  resources :medical_records
  resources :appointments
  resources :departments
  resources :doctors
  resources :patients
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
