require 'pry'

class Customer
  attr_accessor :first_name, :last_name, :reviews, :restaurant

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
    @reviews = []
  end

  def full_name
    "#{first_name} #{last_name}"
  end

def self.all
  @@all
end

def self.split_name(full_name)
  full = full_name.split(" ")
  @first_name = full[0].downcase
  @last_name = full[1].downcase
end

def self.find_by_name(full_name)
  split_name(full_name)
  self.all.detect do |customer|
    customer.first_name.downcase == @first_name && customer.last_name.downcase == @last_name
  end
end

def self.find_all_by_first_name(name)
  self.all.select { |customer| customer.first_name.downcase == name.downcase}
end

def join_names(first_name, last_name)

end

def self.all_names
  names = []
  self.all.map do |customer|
    customer.first_name + customer.last_name
  end
end

def add_review(restaurant, content)
  review = Review.new(restaurant, content)
  review.customer = self
  self.reviews << review
  restaurant.reviews << review
end

end
