=begin
7. Un proveedor de estéreos ofrece un descuento del 10% sobre el
precio sin IVA, de algún aparato si este cuesta $2000 o más. Además,
independientemente de esto, ofrece un 5% de descuento si la marca
es NOSY. Determinar cuanto pagará, con IVA incluido, un cliente
cualquiera por la compra de su aparato. IVA es del 16%.
=end

print "How much is cost? "
price_product = gets.chomp.to_i

print "Is it NOSY?(Y/N) "
nosy = gets.chomp

dis_nossy = price_product * 0.05
dis_offered = price_product * 0.10
iva = price_product * 0.16
price_with_iva = price_product + iva

if price_product >= 2000 && nosy == "Y"
  puts "You should pay: $#{(price_with_iva - dis_nossy) - dis_offered}"
elsif price_product >= 2000 && nosy == "N"
  puts "You should pay: $#{price_with_iva - dis_offered}"
elsif price_product < 2000 && nosy == "Y"
  puts "You should pay: $#{price_with_iva - dis_nossy}"
else
  puts "You should pay: $#{price_with_iva}"
end

puts "Thanks for your shopping"
