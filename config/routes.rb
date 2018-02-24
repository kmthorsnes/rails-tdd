Rails.application.routes.draw do
  root controller: :articles, action: :index
  # caches_page :index, :show
  # skip_before_filter :verify_authenticity_token, :only => [:index, :show]
  resources :articles, except: [:destroy] do
    resources :comments, only: :create
  end
end
