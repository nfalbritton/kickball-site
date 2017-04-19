require "sinatra"
require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data"

set :bind, '0.0.0.0'  # bind to all interfaces
set :public_folder, File.join(File.dirname(__FILE__), "public")


get "/" do
  erb :index
end

get "/teams" do
  @teams = Teams.all
  erb :teams
end
