class Review
  attr_accessor :content, :restaurant, :customer

@@all = []

  def initialize(restaurant, content, customer=nil)
    @content = content
    @restaurant = restaurant
    @customer = customer
    @@all << self
  end

def self.all
  @@all
end

def customer
  self.customer
end

def restaurant
  self.restaurant
end

end
