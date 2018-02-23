class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(title: params[:title], content: params[:content], author: params[:author])

    if @article.save
      flash[:notice] = 'Article was successfully created.'
      redirect_to @article
    else
      if params[:title].blank? && params[:content].blank?
        @message = "Fields can't be blank"
       elsif params[:content].blank?
        @message = "Content can't be blank"
      else
        @message = "Title can't be blank"
      end
      render :new
    end
  end

  def show
    @article = Article.find(params[:id])
  end
end
