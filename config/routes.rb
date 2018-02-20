Rails.application.routes.draw do
  root controller: :articles, action: :index
  # caches_page :index, :show
  # skip_before_filter :verify_authenticity_token, :only => [:index, :show]
  resources :articles, only: [:index, :new, :create, :show, :edit]
end
