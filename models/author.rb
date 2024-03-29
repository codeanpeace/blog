class Author < ActiveRecord::Base
  has_many :posts

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end