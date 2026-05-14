Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  get "sitemap.xml", to: "sitemap#index", defaults: { format: :xml }, as: :sitemap

  # Blog publik
  resources :posts, path: "blog", param: :slug, only: [ :index, :show ] do
    resources :comments, only: [ :create ]
  end

  # Admin
  namespace :admin do
    root "posts#index"
    resources :posts
    get  "login",  to: "sessions#new",     as: :login
    post "login",  to: "sessions#create"
    delete "logout", to: "sessions#destroy", as: :logout
  end

  root "pages#home"
end
