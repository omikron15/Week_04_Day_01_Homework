require("sinatra")
require("sinatra/contrib/all") if development?
also_reload("./models/*")

require_relative("./models/Game_RPS.rb")

get "/" do
  erb(:home)
end

get "/Play_Basic/:hand1/:hand2" do

  @game = Game.play_basic(params[:hand1].capitalize, params[:hand2].capitalize)
  erb(:result)

end

get "/Play_Pc/:hand1" do

  @game = Game.play_pc(params[:hand1].capitalize)
  erb(:result)

end
