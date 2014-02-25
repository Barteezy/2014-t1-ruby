require './davinci-sinatra.rb'

get "/" do
  halt erb(:index)
end

get '/sighting/:id' do
  id = params[:id]
  @sighting = Sighting.find(id)
  halt erb(:show)
end

