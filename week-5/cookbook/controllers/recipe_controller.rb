class RecipeController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  $recipes = [{
    id: 0,
    name: "Sundried Tomato and Corgette Pasta",
    description: "A wonderful pasta dish",
    img: "https://loremflickr.com/300/100/food",
    method: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    },{
    id: 1,
    name: "Jollof Rice",
    description: "A delicious Nigerian rice dish",
    img: "https://loremflickr.com/300/100/food",
    method: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    },{
    id: 2,
    name: "Cauliflower Tagine",
    description: "A Moroccan dish packed with flavour",
    img: "https://loremflickr.com/300/100/food",
    method: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."}]

  get "/" do
    @recipes = $recipes

    erb :"pages/index"
  end

  get "/new" do
    @recipe = {
      id: "",
      name: "",
      description: "",
      img: "",
      method: ""
    }

    erb :"pages/new"
  end

  post "/" do
    new_recipe = {
      id: $recipes.length,
      name: params[:name],
      description: params[:description],
      img: "https://loremflickr.com/300/100/food",
      method: params[:method]
    }

    $recipes.push new_recipe

    redirect "/#{new_recipe[:id]}"

  end

  get "/:id" do
    id = params[:id].to_i

    @recipe = $recipes[id]

    erb :"pages/show"
  end

  get "/:id/edit" do
    id = params[:id].to_i

    @recipe = $recipes[id]

    erb :"pages/edit"
  end

  put "/:id" do
    id = params[:id].to_i

    recipe = $recipes[id]

    recipe[:name] = params[:name]
    recipe[:description] = params[:description]
    recipe[:method] = params[:method]

    redirect "/#{id}"
  end

  delete "/:id" do
    $recipes.delete_at(params[:id].to_i)
    redirect "/"
  end


end
