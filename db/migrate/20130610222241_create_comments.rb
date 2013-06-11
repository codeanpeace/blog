class CreateComments < ActiveRecord::Migration
  def up
    create_table :comments do |c|
      c.string :name
      c.string :content
      c.integer :post_id
      c.timestamps
    end
  end

  def down
    drop_table :comments
  end
end
