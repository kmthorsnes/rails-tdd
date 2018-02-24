class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params.merge(article_id: params[:article_id]))
    if @comment.persisted?
      flash[:success] = 'Comment was created'
      redirect_back(fallback_location: root_path)
    else
      flash[:error] = 'Comment failed'
      redirect_back(fallback_location: root_path)
    end
  end

  def comment_params
	   params.require(:comment).permit(:email, :body)
  end
end
