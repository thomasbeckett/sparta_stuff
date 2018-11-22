class MoviesController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  # setting the root as the parent directory of the current directory
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # INDEX
  get '/' do
    @title = "Index Page"
    # Here we can make a request to our model to get all the Movies
    @movies = Movie.all

    erb :'movies/index'
  end
  # NEW
  get '/new' do
    erb :'movies/new'
  end
  # SHOW
  get '/:id' do
    id = params[:id].to_i
    # Here we can make a request to our model to find our movie with the id from the params
    @movie = Movie.find id

    erb :'movies/show'
  end
  # CREATE
  post '/' do

    movie = Movie.new

    movie.title = params[:title]
    movie.year = params[:year]
    movie.actors = params[:actors]

    # Here we can make a request to our model to save our new Movie instance
    movie.save

    redirect '/'

  end
  # UPDATE
  put '/:id' do
    id = params[:id].to_i

    # Here we can make a request to our model to get our movie with the id from the params and update it with the params
    movie = Movie.find id

    movie.title = params[:title]
    movie.year = params[:year]
    movie.actors = params[:actors]

    # Then save it
    movie.save

    redirect '/'

  end
  # DELETE
  delete '/:id' do
    id = params[:id].to_i
    # Here we can make a request to our model to delete our movie
    Movie.destroy id
    redirect '/'
  end
  # EDIT
  get '/:id/edit' do
    id = params[:id].to_i
    # Here we can make a request to our model to get our Movie then send it to our form to populate it
    @movie = Movie.find id

    erb :'movies/edit'
  end

end
