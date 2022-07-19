Rails.application.routes.draw do
  # get 'admissions/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'admissions#index'
  get 'admissions/staff'
  get 'admissions/admission'
  get 'admissions/gallery'
  get 'admissons/batch1'
  get 'admissons/batch2'
  get 'admissons/batch3'
  get 'admissons/faq'
  get 'admissons/contact'
end
