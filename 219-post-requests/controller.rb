require './davinci-sinatra.rb'

get "/" do
  halt erb (:index)
end

get "/elements/:id" do
  id = params[:id]
  @element = Element.find(id)
  halt erb (:show)
end

post "/" do
  Element.create! name: "Oxygen", number: 6, description: "so cool"
  redirect "/"
end

