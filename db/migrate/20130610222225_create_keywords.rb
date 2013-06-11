class CreateKeywords < ActiveRecord::Migration
  def up
    create_table :keywords do |k|
      k.string :name
    end
  end

  def down
    drop_table :keywords
  end
end
