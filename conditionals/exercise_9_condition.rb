=begin
9. Leer 2 números; si son iguales que lo multiplique, si el primero es
mayor que el segundo que los reste y sino que los sume.
=end

print "Tell me one number: "
num_1 = gets.chomp.to_i

print "Tell me other: "
num_2 = gets.chomp.to_i

if num_1 == num_2
  puts "Result of product: #{num_1 * num_2}"
elsif num_1 > num_2
  puts "Result of subtract: #{num_1 - num_2}"
else
  puts "Result of sum: #{num_1 + num_2}"
end
