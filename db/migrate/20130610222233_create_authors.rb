class CreateAuthors < ActiveRecord::Migration
  def up
    create_table :authors do |a|
      a.string :first_name
      a.string :last_name
    end
  end

  def down
    drop_table :authors
  end
end
