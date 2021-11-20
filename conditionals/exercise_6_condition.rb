=begin
6. En una fábrica de computadoras se planea ofrecer a los clientes un
descuento que dependerá del número de computadoras que
compre. Si las computadoras son menos de cinco se les dará un 10%
de descuento sobre el total de la compra; si el número de
computadoras es mayor o igual a cinco pero menos de diez se le
otorga un 20% de descuento; y si son 10 o más se les da un 40%. El
precio de cada computadora es de $11.000.
=end

print "How many computers do you want to take? "
num_pc = gets.chomp.to_i

price_pc = 11000
price_total_pc = 11000 * num_pc

if num_pc >= 5 && num_pc < 10
  puts "You should pay: $#{price_total_pc - (price_total_pc * 0.20)}"
elsif num_pc >= 10
  puts "You should pay: $#{price_total_pc - (price_total_pc * 0.40)}"
else
  puts "You should pay: $#{price_total_pc - (price_total_pc * 0.10)}"
end
