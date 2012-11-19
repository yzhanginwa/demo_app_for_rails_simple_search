class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :address_id

  belongs_to :address
  has_many :posts
  has_many :comments

  def name
    "#{self.first_name} #{self.last_name}"
  end
end
