module SalesTax
  class Item
    attr_accessor :name, :price, :quantity, :imported

      EXEMPT_CATEGORIES = ['book', 'chocolate', 'pill', 'food', 'medical']

    def initialize(name, price, quantity, imported)
      @name = name
      @price = price
      @quantity = quantity
      @imported = imported
    end
      def exempted?
    EXEMPT_CATEGORIES.any? { |category| @name.downcase.include?(category) }
     end
   end
  end