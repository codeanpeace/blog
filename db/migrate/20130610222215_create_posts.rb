class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |p|
      p.string :title
      p.string :content
      p.string :image_url
      p.integer :author_id
      p.timestamps
    end
  end

  def down
    drop_table :posts
  end
end
