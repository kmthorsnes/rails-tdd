class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def newarticle
    
  end

  def learningrails5

  end

  def create
    @newarticle = {title: params.require(:title), content: params.require(:content)}
    # head :no_content
  end

end
