require "sinatra"
require "sinatra/contrib"
require "sinatra/reloader" if development?
require "pg"
require "sinatra/cookies"

require_relative "controllers/animals_controller.rb"
require_relative "models/animal.rb"

use Rack::MethodOverride

run AnimalsController
