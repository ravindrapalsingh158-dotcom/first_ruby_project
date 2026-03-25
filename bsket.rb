module SalesTax
  class Basket
    attr_accessor :items

    def initialize
      @items = []
    end

    def add_item(item)
      @items << item
    end
  end
end
