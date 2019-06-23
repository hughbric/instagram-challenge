class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.create!(post_params)
    # @post.images.attach(params[:images])
    redirect_to posts_url
  end

  def index
    @posts = Post.all
  end
 
  private
    def post_params
      params.require(:post).permit(:title, :content, images: [])
    end
end
