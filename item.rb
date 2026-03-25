module SalesTax
  class Item
    attr_accessor :name, :price, :quantity, :imported

    def initialize(name, price, quantity, imported)
      @name = name
      @price = price
      @quantity = quantity
      @imported = imported
    end
  end
end