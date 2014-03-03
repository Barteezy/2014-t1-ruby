require './davinci-sinatra.rb'

get "/" do
  halt erb(:login)
end

post "/" do
  name = params[:username]
  pin = params[:pin_number]
  user = User.find_by(username: name)
  if user == nil
  @error = "User does not match"
  @old_username = name
  halt erb(:login)
  elsif pin != user.pin_number
  @error = "Pin does not match"
  @old_username = name
  halt erb(:login)
  else
  redirect "/success"
  end
end

get "/success" do
  halt erb(:success)
end