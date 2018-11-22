require "sinatra"
require "sinatra/contrib"
require "sinatra/reloader" if development?

require_relative "controllers/recipe_controller"

use Rack::MethodOverride

run RecipeController
