Rails.application.routes.draw do
  
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords' }
  get 'home/index'
  root 'home#index'

  resources :courses, only: [:show]

  namespace :admins do 
    resources :course_registrations
    resources :courses
  end

end
