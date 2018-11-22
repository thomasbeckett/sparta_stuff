class AnimalsController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  helpers Sinatra::Cookies

  enable :sessions

  get "/" do

    if cookies[:visited]
      @show_message = "Welcome"
    end

    response.set_cookie(:visited, :value => 1, :expires => Time.now + (60)) #seconds

    @animals = Animal.all

    erb :"animals/index"
  end

  get "/new" do
    @animal = Animal.new

    erb :"animals/new"
  end

  post "/" do
    animal = Animal.new

    animal.name = params[:name]
    animal.fact = params[:fact]

    animal.save

    redirect "/"
  end

  get "/:id" do
    id = params[:id].to_i

    if !session[:animals]
      session[:animals] = []
    end

    if !session[:animals].include? id
      session[:animals].push id
    end

    p session[:animals]

    @animal = Animal.find id

    erb :"animals/show"
  end


  get "/:id/edit" do
    id = params[:id].to_i

    @animal = Animal.find id

    erb :"animals/edit"
  end

  put "/:id" do
    id = params[:id].to_i
    animal = Animal.find id

    animal.name = params[:name]
    animal.fact = params[:fact]

    animal.save

    redirect "/#{id}"
  end

  delete "/:id" do
    id = params[:id].to_i
    Animal.destroy id

    redirect "/"
  end
end
