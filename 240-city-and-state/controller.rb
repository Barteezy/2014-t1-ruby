require './davinci-sinatra.rb'

get "/" do
  @cities = City.order(:id)
  halt erb(:index)
end

get "/cities/:name" do
  city = params[:name]
  @city = City.find_by(name: city)
  halt erb(:show)
end


  