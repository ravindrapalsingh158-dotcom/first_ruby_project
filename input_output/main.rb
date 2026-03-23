
loop do
puts "Please enter the item name:"
name= gets.chomp
 break if name.empty? 

puts "please enter your price :"
price= gets.chomp.to_f

puts "please enter your quantity ::"
quantity= gets.chomp.to_i

puts "is the item imported yes/no :"
 imported= gets.chomp.downcase
 if imported == "yes"
    imported = true
 else
    imported=false
 end 

 item = Item.new(name, price , quantity , imported )

 basket = Basket.new
   basket.add_item(item)

calculator = TaxCalculator.new(item)
tax = calculator.total_tax
    total_price = calculator.price_with_tax
    puts "the total price for #{item.name} is #{total_price}"
end




