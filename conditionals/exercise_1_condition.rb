=begin
1. Hacer un algoritmo que calcule el total a pagar por la compra de
camisas. Si se compran tres camisas o mas se aplica un descuento
del 30% sobre el total de la compra y si son menos de tres camisas
un descuento del 10%.
=end

puts "Today is discount day for you"

print "How many shirts do you want?: "

num_shirts = gets.chomp.to_i

cost_shirt = 15000
thirty_percent = cost_shirt * 0.30
ten_percent = cost_shirt * 0.10

if num_shirts >= 3
  puts "You should pay: #{(cost_shirt * num_shirts) - thirty_percent}"
else
  puts "You should pay: #{(cost_shirt * num_shirts) - ten_percent}"
end

puts "Thanks for your shopping"
