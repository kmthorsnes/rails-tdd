class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  def landing
  end
end
