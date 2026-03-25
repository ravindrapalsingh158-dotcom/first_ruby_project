# receipt.rb
def print_receipt(basket)
  total_tax = 0
  total_price = 0

  basket.items.each do |item|
    tax = 0
    if item.exempted?
      tax += 0
    else
      tax += item.price * 0.1
    end
    if item.imported
      tax += item.price * 0.05
    end
    tax *= item.quantity
    line_total = (item.price * item.quantity) + tax

    total_tax += tax
    total_price += line_total

    puts "#{item.quantity} #{'imported ' if item.imported}#{item.name}: #{'%.2f' % line_total}"
  end

  puts "Sales Taxes: #{'%.2f' % total_tax}"
  puts "Total: #{'%.2f' % total_price}"
end