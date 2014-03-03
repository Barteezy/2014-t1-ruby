require './davinci-sinatra.rb'

get "/" do
  @stations = Station.order(:id)
  halt erb(:index)
end

get "/existing" do
  @stations = Station.where(status: "existing")
  halt erb(:index)
end

get "/private" do
  @stations = Station.where(property_type: "private")
  halt erb(:index)
end

get "/zip/:zip_code" do
  zip_code = params["zip_code"]
  @stations = Station.where(zip_code: zip_code)
  halt erb(:index)
end

get "/street/Broadway" do
  @stations = Station.where("address ilike ?", "%Broadway%")
  halt erb(:index)
end

get "/street/17th" do
  # TODO: Assign to @stations variable
  halt erb(:index)
end
