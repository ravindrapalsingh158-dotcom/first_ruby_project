module SalesTax
  class TaxCalculation
    def self.calculate(item)
      tax = 0

      unless item.exempted?
        tax += item.price * 0.1
      end

      if item.imported
        tax += item.price * 0.05
      end

      tax
    end
  end
end