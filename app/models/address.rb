class Address < ActiveRecord::Base
  has_one :user

  def full_address
    "#{self.address} #{self.city} #{self.state} #{self.zip}"
  end

  def address
    if address2
      "#{self.address1} #{address2}"
    else
      "#{self.address1}"
    end
  end
end
