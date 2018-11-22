require 'sinatra'
require 'sinatra/contrib'
require 'sinatra/reloader' if development?
require 'pg'
# Make sure our model is above our controller so we can use Model methods in the controller
require_relative './models/Movie.rb'
require_relative './controllers/movies_controller.rb'

use Rack::Reloader
use Rack::MethodOverride

run MoviesController
