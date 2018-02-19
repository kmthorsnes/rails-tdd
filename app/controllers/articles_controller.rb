class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  def newarticle
    
  end
end
