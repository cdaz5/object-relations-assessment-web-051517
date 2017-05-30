class Restaurant
  attr_accessor :name, :reviews

@@all = []

  def initialize(name)
    @name = name
    @reviews = []
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    self.reviews
  end

  def customers
    self.reviews.map do |review|
      review.customer
    end
  end


end
