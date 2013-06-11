get "/new_author" do
  @authors = Author.all
  @admin = true
  erb :"authors/new_author"
end

post "/new_author" do
  @author = Author.create(params[:author])
  redirect "/new_author"
end
