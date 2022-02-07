Rails.application.routes.draw do
  resources :vaccination_schemes
  
  resources :notices
  
  resources :covid_situations
  
  resources :covid_current
  post 'covid_current/part_locality' => 'covid_current#part_locality', :as => :part_locality
  
  #resources :covid_cases
  #get 'covid_cases/:id/confirm' => 'covid_cases#confirm', :as => :confirm_covid_case
  #get 'covid_cases/:id/pdf_confirm' => 'covid_cases#pdf_confirm', :as => :pdf_confirm_covid_case
  #get 'covid_cases/:id/pdf_suspicious' => 'covid_cases#pdf_suspicious', :as => :pdf_suspicious_covid_case
  #get 'covid_cases/:id/pdf_contact' => 'covid_cases#pdf_contact', :as => :pdf_contact_covid_case
  

  resources :localities
  resources :states
  resources :areas

  post '/get_acumulated/:locality_id/:part_date/:case_type/:new_value' => 'covid_situations#get_acumulated'

  devise_for :users
  root 'welcome#index'


end
