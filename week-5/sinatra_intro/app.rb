require "sinatra"
require "sinatra/contrib"
require "sinatra/reloader" if development?

get "/" do
  "<h1>Hello, World!</h1>
  <h2>This is my site</h2>
  <p>isnt it great</p>"
end

get "/cups" do
  "<h1>Pinda and Arun like stealing cups</h1>"
end
