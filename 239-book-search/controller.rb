require './davinci-sinatra.rb'

get "/" do
  halt erb(:browse)
end

get "/author/:last_name" do
  name = params[:last_name]
  @books = Book.where("author ilike ?", "%#{name}")
  @header = "Books by #{name}"
  halt erb(:search_results)
end
  
get "/topic/:language" do
  topic = params[:language]
  @books = Book.where("title ilike ?", "%#{topic}%")
  @header = "Search results for #{topic}"
  halt erb(:search_results)
end

get "/year/:year" do
  year = params[:year]
  @books = Book.where(publication_year: year)
  @header = "Books published in #{year}"
  halt erb(:search_results)
end

