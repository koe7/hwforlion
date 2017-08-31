class CommentsController < ApplicationController
  def write
    @new_comment = Comment.new
    @new_comment.post_id = params[:post_id]
    @new_comment.user_id = current_user.id
    @new_comment.content = params[:content]
    @new_comment.save
    #redirect_to '/posts'
    render json: {content: @new_comment.content, username: User.find(@new_comment.user_id).name}
  end
end
