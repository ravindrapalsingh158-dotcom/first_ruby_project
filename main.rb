require_relative 'lib/item'
require_relative 'lib/basket'
require_relative 'lib/tax_calculation'

basket = SalesTax::Basket.new

total_tax = 0
total_price = 0

loop do
  puts "Please enter the item name:"
name = gets.chomp
break if name.strip.empty?

  puts "please enter your price :"
  price = gets.chomp.to_f

  puts "please enter your quantity ::"
  quantity = gets.chomp.to_i

  puts "is the item imported yes/no :"
  imported = gets.chomp.downcase == "yes"

  item = SalesTax::Item.new(name, price, quantity, imported)

  basket.add_item(item)

  tax = SalesTax::TaxCalculation.calculate(item)

  item_total_tax = tax * item.quantity
  item_total_price = (item.price + tax) * item.quantity

  total_tax += item_total_tax
  total_price += item_total_price
end

puts "----------------------"
puts "the total sales tax is #{total_tax.round(2)}"
puts "the total price is #{total_price.round(2)}"