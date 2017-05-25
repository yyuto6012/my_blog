Rails.application.routes.draw do
  namespace :admins do
    resources :blogs, except: [:destroy]
    resources :blog_categories, except: [:destroy]
  end

  resources :bog_categories, only: [:index] do
    resources :blogs, only: [:show]
  end
end
