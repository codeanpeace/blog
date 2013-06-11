get "/new_keyword" do
  @keywords = Keyword.all
  @admin = true
  erb :"keywords/new_keyword"
end

post "/new_keyword" do
  @keyword = Keyword.create(params[:keyword])
  redirect "/new_keyword"
end
