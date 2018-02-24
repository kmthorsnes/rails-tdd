class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    if @comment.persisted?
      flash[:success] = 'Comment was created'
      redirect_back(fallback_location: root_path)
    else
      flash[:error] = 'Comment failed'
      redirect_back(fallback_location: root_path)
    end
  end

  def comment_params
	   params.require(:comment).permit(:email, :body, :article_id)
  end
end
