require "sinatra"
require "sinatra/contrib"
require "sinatra/reloader"
require "pg"

require_relative "controllers/posts_controller"
require_relative "models/post"

use Rack::MethodOverride

run PostsController
