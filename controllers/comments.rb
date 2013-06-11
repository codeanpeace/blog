post "/:post_id/new_comment" do
  @post = Post.find(params[:post_id])
  @comment = Comment.create(params[:comment])
  @comment.update_attributes(:post_id => @post.id)
  redirect "/view_post/#{@post.id}"
end