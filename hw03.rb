class BookInStock
  attr_accessor :price, :numberISBN
  def initialize(numberISBN, price)
    if numberISBN.empty? or price <= 0
      raise ArgumentError
    else
      @numberISBN = numberISBN
      @price = price
    end

  end

  def price_as_string
    "$%#.2f" % @price
  end
end

a = BookInStock.new('ss', 111)
puts a.price_as_string