# frozen_string_literal: true

Rails.application.routes.draw do
  get 'sessions/new'
  get 'admin_features/gallery_adding', to: 'admin_features#gallery_adding'
  get 'admin_features/staff_adding', to: 'admin_features#staff_adding'
  post '/gallery_add', to: 'admin_features#images_attach'
  post '/staff_add', to: 'admin_features#staff_attach'
  get '/gallery', to: 'admin_features#gallery'
  get '/staff', to: 'admin_features#staff'
  get '/report', to: 'admin_features#report'
  get '/listing', to: 'admin_features#listing'
  get 'admin_features/dashboard'
  get 'refferal_details/refferal'
  get 'family_details/family'
  get 'educational_details/education'
  get 'parent_details/parent'
  get 'admin_features/detailed_view'
  get '/detailed_view/:id', to: 'admin_features#details'
  get '/admin_signin', to: 'sessions#new', as: :admin_signin
  post '/admin_signin', to: 'sessions#admin_login', as: :admin_session
  delete '/signout', to: 'sessions#destroy'
  get '/searched  ', to: 'admissions#search_by_mail'

  resources :statuses

  # get 'admissions/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Home Page Routes
  root 'admissions#index'
  get 'admissions/staff'
  get 'basic_details/basic'
  get 'admissions/gallery'
  get 'admissions/faq'
  get 'admissions/contact'
  get 'admissions/search', to: 'admissions#search'

  # Basic Details Route
  get 'basic_details/basic', to: 'basic_details#basic'
  match 'basic_details/create', to: 'basic_details#create', via: :post

  # Educational Details Route
  get 'educational_details/education', to: 'educational_details#education'
  get 'admissions/index'
  match 'educational_details/create', to: 'educational_details#create', via: :post

  # Family Details Route
  get 'family_details/family', to: 'family_details#family'
  match 'family_details/create', to: 'family_details#create', via: :post

  # Referral Details Route
  get 'refferal_details/refferal', to: 'refferal_details#refferal'
  match 'refferal_details/create', to: 'refferal_details#create', via: :post

  # Dashboard Navigation
  match 'admin_features/dashboard', to: 'admin_features#dashboard', via: :post
  match 'edit/:id', to: 'admin_features#edit', via: :get
end
