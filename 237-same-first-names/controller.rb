require './davinci-sinatra.rb'

get "/" do
  halt erb(:enter_first)
end

post "/" do
  first = params[:first_name]
  @people = Person.where(first_name: first)
  if @people.size == 0
    halt erb(:no_one)
  elsif @people.size == 1
  @person = Person.find_by(first_name: first)
    halt erb(:number)
  else @people.size > 1
    halt erb(:choose)
    end
end


get "/choose/:name" do
  first = params[:first_name]
  @people = Person.where(first_name: first)
  halt erb(:choose)
end
  

  
  




