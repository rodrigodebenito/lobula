RailsApp::Application.routes.draw do

  # Redirect devise to prevent new users from being created
  devise_for :users
  #, :controllers => { :registrations => "registrations" }

  # Set index
  get "index", to: "main#index"
  root to: "main#index"

  # Namespace resource routes under admin
  namespace :admin do
    root to: "admin#index"
    resources :pictures, :people, :projects
  end

  # Add dynamic routing
  get "/:id", to: "main#project_page"

end
