Rails.application.routes.draw do
  get 'articles/index'
  get '/landing' => 'articles#landing'

  root controller: :articles, action: :index
end
