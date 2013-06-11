get "/new_post" do
  @admin = true
  erb :"posts/new_post"
end

post "/new_post" do
  @post = Post.create(params[:post])
  redirect "/"
end

get "/view_post/:post_id" do
  @post = Post.find(params[:post_id])
  erb :"posts/view_post"
end