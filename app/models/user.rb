class User < ActiveRecord::Base
  belongs_to :address
  has_many :posts
  has_many :comments

  def name
    "#{self.first_name} #{self.last_name}"
  end
end
