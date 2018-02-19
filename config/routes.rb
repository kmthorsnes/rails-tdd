Rails.application.routes.draw do
  get 'articles/index'
  get '/newarticle' => 'articles#newarticle'

  root controller: :articles, action: :index
end
