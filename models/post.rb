class Post < ActiveRecord::Base
  has_and_belongs_to_many :keywords
  belongs_to :author
  has_many :comments

  def list_of_keywords
    self.keywords.map{|keyword| keyword.name}.join(", ")
  end
end