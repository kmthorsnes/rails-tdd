class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    binding.pry
    if @article.save
      flash[:success] = 'Article was successfully created.'
      redirect_to @article
    else
      if params[:title].blank? || params[:content].blank?
        flash[:error] = "Fields can't be blank"
        redirect_back(fallback_location: root_path)
      else
        render :new
      end
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  private

  def article_params
  	params.permit(:title, :content, :author)
  end
end
