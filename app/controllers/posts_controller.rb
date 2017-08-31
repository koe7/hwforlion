class PostsController < ApplicationController
  def index
    
  end
  def write_view

  end
  def write
    new_post = Post.new
    new_post.user_id = current_user.id
    new_post.title = params[:title]
    new_post.content = params[:content]
    new_post.save
    redirect_to '/posts'
  end
  def update_view
    @one_post = Post.find(params[:post_id])
  end
  def update_apply
    @one_post = Post.find(params[:post_id])
    @one_post.title = params[:title]
    @one_post.content = params[:content]
    @one_post.save
    redirect_to '/posts'
  end
  def destroy
    @one_post = Post.find(params[:post_id])
    @one_post.destroy
    redirect_to '/posts'
  end
end
