require './davinci-sinatra.rb'

get "/" do
  halt erb(:index)
end

get "/:word" do
  word = params["word"]
  @entry = EncyclopediaEntry.find_by(word: word)
  halt erb(:show)
end
  


