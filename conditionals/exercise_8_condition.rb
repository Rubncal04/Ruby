=begin
8. Una empresa quiere hacer una compra de varias piezas de la misma
clase a una fábrica de refacciones. La empresa, dependiendo del
monto total de la compra, decidirá que hacer para pagar al fabricante.
Si el monto total de la compra excede de $500.000 la empresa tendrá
la capacidad de invertir de su propio dinero un 55% del monto de la
compra, pedir prestado al banco un 30% y el resto lo pagará
solicitando un crédito al fabricante. Si el monto total de la compra no
excede de $500.000 la empresa tendrá capacidad de invertir de su
propio dinero un 70% y el restante 30% lo pagará solicitando crédito
al fabricante. El fabricante cobra por concepto de interes un 20%
sobre la cantidad que se le pague a crédito. Obtener la cantidad a
invertir, valor del préstamo, valor del crédito y los intereses.
=end

print "Total cost of the shop: "
shop = gets.chomp.to_i

credit_factory = 0
interests = 0

if shop > 500000
  credit_factory = shop * 0.15
  interests = credit_factory * 0.20
  puts "You should pay: $#{shop * 0.55}"
  puts "The bank pays: $#{shop * 0.30}"
  puts "The factory pays: $#{credit_factory}"
  puts "Total of your credit: $#{credit_factory + interests}"
else
  puts credit_factory, interests
  puts "You should pay: $#{shop * 0.70}"
  puts "The factory pays: $#{credit_factory}"
  puts "Total of your credit: $#{credit_factory + interests}"
end
