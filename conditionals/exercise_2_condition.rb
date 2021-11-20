=begin
2. En un supermercado se hace una promoción, mediante la cual el
cliente obtiene un descuento dependiendo de un número que se
escoge al azar. Si el número escogido es menor que 74 el descuento
es del 15% sobre el total de la compra, si es mayor o igual a 74 el
descuento es del 20%. Obtener cuanto dinero se le descuenta.
=end

puts "There are disccount, Just choose a number"

print "Tell me one number from 1 to 100: "
number = gets.chomp.to_i

print "Real value: "
total_pay = gets.chomp.to_i

fifth_percent = total_pay * 0.15
twentieth_percent = total_pay * 0.20

if number >= 74
  puts "You should pay #{total_pay - twentieth_percent}"
else
  puts "You should pay #{total_pay - fifth_percent}$"
end
