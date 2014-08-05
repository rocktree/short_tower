App::Application.routes.draw do

  # ------------------------------------------ Devise

  devise_for :users, skip: [:sessions, :registrations]
  devise_scope :user do
    get '/login' => 'devise/sessions#new', :as => :new_user_session
    post '/login' => 'devise/sessions#create', :as => :user_session
    get '/logout' => 'devise/sessions#destroy', :as => :destroy_user_session
  end

  # ------------------------------------------ Admin

  get '/admin' => 'admin#dashboard', :as => :admin_dashboard
  namespace :admin do
    resources :users, :except => [:show]
  end

  # ------------------------------------------ Public

  # resources :posts

  # ------------------------------------------ JSON

  # scope 'json' do
  #   'posts' => 'posts#index'
  # end

  # ------------------------------------------ Root

  root :to => 'home#index'

end
