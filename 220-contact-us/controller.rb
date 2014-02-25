require './davinci-sinatra.rb'

get "/" do
  halt erb(:index)
end

post "/" do
  message = Message.new
  message.body = params["body"]
  message.subject = params["subject"]
  message.save!
  redirect "/"
end