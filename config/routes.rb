Rails.application.routes.draw do
  get 'articles/index'
  get '/newarticle' => 'articles#newarticle'
  get '/learningrails5' => 'articles#learningrails5'
  post '/newarticle' => 'articles#create'

  root controller: :articles, action: :index
end
