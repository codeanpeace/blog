get "/admin" do
  @admin = true
  erb :"admin"
end