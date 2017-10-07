Rails.application.routes.draw do

  resources :faqs
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords' }
  get 'home/index'
  root 'home#index'

  resources :courses do 
    collection do 
      post :create_course_enrollment
      get :new_course_enrollment
    end
    resources :course_modules do 
      resources :chapters, only: [:show]  
    end
  end

  namespace :admins do 
    resources :course_registrations
    resources :courses
    resources :faqs
    resources :chapters
    resources :course_modules
  end

end
