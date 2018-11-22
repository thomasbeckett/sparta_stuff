class PostsController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  #Index
  get "/" do

    @title = "Blog Posts"
    @posts = Post.all


    erb :"posts/index"
  end

  # New
  get "/new" do

    @post = Post.new
    @post.id = ''

    erb :"posts/new"
  end

  # Create
  post "/" do

    post = Post.new

    post.title = params[:title]
    post.body = params[:body]

    post.save

    redirect "/#{post.id}"
  end

  # Show
  get "/:id" do
    id = params[:id].to_i

    @post = Post.find id

    erb :"posts/show"
  end

  # Edit
  get "/:id/edit" do
    id = params[:id].to_i

    @post = Post.find id

    erb :"posts/edit"

  end

  # Update
  put "/:id" do
    id = params[:id].to_i

    post = Post.find id

    # update the title and body
    post.title = params[:title]
    post.body = params[:body]

    # store updates objects
    post.save

    redirect "/#{post.id}"

  end

  # Destroy
  delete "/:id" do

    id = params[:id].to_i
    Post.destroy id

    redirect "/"
  end
end
