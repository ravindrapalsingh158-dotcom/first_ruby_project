require_relative 'lib/item'
require_relative 'lib/basket'
require_relative 'lib/tax_calculation'

basket = SalesTax::Basket.new

loop do
  puts "Please enter the item name:"
  name = gets.chomp
  break if name.empty?

  puts "please enter your price :"
  price = gets.chomp.to_f

  puts "please enter your quantity ::"
  quantity = gets.chomp.to_i

  puts "is the item imported yes/no :"
  imported = gets.chomp.downcase == "yes"

  item = SalesTax::Item.new(name, price, quantity, imported)

  basket.add_item(item)

  tax = SalesTax::TaxCalculation.calculate(item)
  total_price = item.price + tax

  puts "the total price for #{item.name} is #{total_price}"
end