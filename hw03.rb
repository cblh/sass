class BookInStock
  attr_accessor :price, :isbn
  def initialize(isbn, price)
    if isbn.empty? or price <= 0
      raise ArgumentError
    else
      @isbn = isbn
      @price = price
    end

  end

  def price_as_string
    "$%#.2f" % @price
  end
end

a = BookInStock.new('ss', 111)
puts a.price_as_string