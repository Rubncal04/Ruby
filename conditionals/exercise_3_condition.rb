=begin
3. Una compañía de seguros está abriendo un departamento de
finanzas y estableció un programa para captar clientes, que consite
en lo siguiente: Si el monto por el que se efectúa la fianza es menor
que $50.000 la cuota a pagar será por el 3% del monto, y si el monto
es mayor que $50.000 la cuota a pagar será el 2% del monto. La
afianzadora desea determinar cual será la cuota que debe pagar al
cliente.
=end

print "What is the amount of the security deposit? "
security_deposit = gets.chomp.to_i

if security_deposit < 50000
  puts "You should pay: #{(security_deposit * 0.03) + security_deposit}"
else
  puts "You should pay: #{(security_deposit * 0.02) + security_deposit}"
end

puts "Thanks for your payment"
