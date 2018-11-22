class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find params[:id]
  end

  def edit
    @post = Post.find params[:id]
  end

  def create
    @post = Post.new post_params

    respond_to do |format|
      if @post.save
        format.html{redirect_to @post, notice: "'#{@post.title}' was created"}
      else
        format.html{render :new}
      end
    end
  end

  def update
    @post = Post.find params[:id]
    @post.update post_params
    redirect_to root_path

  end

  def destroy
    @post = Post.find params[:id]
    @post.destroy
    redirect_to root_path
  end

  def post_params
    post_params = params.require(:post).permit(:title,:body,:author)
  end
end
