Rails.application.routes.draw do
  devise_for :users
  get 'laptops/index'

  get 'cars/index'

  get 'articles/index'

  get 'patients/index'

  get 'appointments/index'

  get 'doctors/index'

  get 'welcome/index'
  root 'welcome#index'
  resources :doctors
   resources :patients
    resources :appointments
    resources :articles
    resources :cars
    resources :laptops
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
