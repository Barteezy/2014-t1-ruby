require "./davinci-sinatra.rb"

get "/" do
  @apartment = Apartment.all
  halt erb(:index)
end



