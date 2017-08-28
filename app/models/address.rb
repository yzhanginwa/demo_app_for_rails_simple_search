class Address < ActiveRecord::Base
  belongs_to :addressable, polymorphic: true 

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
