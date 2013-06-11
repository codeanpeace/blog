class KeywordsPostsBridge < ActiveRecord::Migration
  def up
    create_table :keywords_posts, :id => false do |b|
      b.integer :keyword_id
      b.integer :post_id
    end
  end

  def down
    drop_table :keywords_posts
  end
end
