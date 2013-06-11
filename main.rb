require "bundler"
Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :host => 'localhost',
  :username => 'harrisontan', # Change the username to yours.
  :password => '',
  :database => 'blog', # Make sure your new DB name matches.
  :encoding => 'utf8'
)

require_relative "models/post"
require_relative "models/author"
require_relative "models/keyword"
require_relative "models/comment"

require_relative "controllers/posts"
require_relative "controllers/authors"
require_relative "controllers/keywords"
require_relative "controllers/comments"
require_relative "controllers/admins"

require_relative "helpers/form_helpers"

get "/" do
  @posts = Post.order("created_at")
  erb :index
end