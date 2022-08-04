Rails.application.routes.draw do
  get 'admin_features/dashboard'
  get 'refferal_details/refferal'
  get 'family_details/family'
  get 'educational_details/education'
  get 'parent_details/parent'
  # get 'admissions/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #Home Page Routes
  root 'admissions#index'
  # get 'admissions/staff'
  # get 'basic_details/basic'
  # get 'admissions/gallery'
  # get 'admissons/batch1'
  # get 'admissons/batch2'
  # get 'admissons/batch3'
  # get 'admissons/faq'
  # get 'admissons/contact'

  #Basic Details Route
  get 'basic_details/basic', to: "basic_details#basic"
  match 'basic_details/create', :to => 'basic_details#create', :via => :post

  #Educational Details Route
  get 'educational_details/education', to: "educational_details#education"
  get 'admissions/index'
  match 'educational_details/create', :to => 'educational_details#create', :via  => :post

  #Family Details Route
  get 'family_details/family', to: "family_details#family"
  match 'family_details/create', :to => 'family_details#create', :via  => :post

  #Referral Details Route
  get 'refferal_details/refferal', to: "refferal_details#refferal"
  match 'refferal_details/create', :to => 'refferal_details#create', :via  => :post
end
