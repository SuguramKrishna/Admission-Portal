Rails.application.routes.draw do
  get 'educational_details/education'
  get 'parent_details/parent'
  # get 'admissions/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #Home Page Routes
  root 'admissions#index'
  get 'admissions/staff'
  get 'basic_details/basic'
  get 'admissions/gallery'
  get 'admissons/batch1'
  get 'admissons/batch2'
  get 'admissons/batch3'
  get 'admissons/faq'
  get 'admissons/contact'

  #Basic Details Route
  get 'basic_details/basic'
  match 'basic_details/create', :to => 'basic_details#create', :via => :post

  #Educational Details Route
  get 'educational_details/education'
end
