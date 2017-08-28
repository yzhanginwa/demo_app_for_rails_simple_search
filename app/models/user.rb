class User < ActiveRecord::Base
  has_one :address, as: :addressable
  has_many :posts
  has_many :comments

  def name
    "#{self.first_name} #{self.last_name}"
  end
end
