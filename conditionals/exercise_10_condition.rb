=begin
10. Leer tres números diferentes e imprimir el número mayor de los
tres.
=end

print "Tell one number: "
num_1 = gets.chomp.to_i

print "Tell other: "
num_2 = gets.chomp.to_i

print "Tell one more: "
num_3 = gets.chomp.to_i

if num_1 > num_2 && num_1 > num_3
  puts "#{num_1} is greater"
elsif num_2 > num_1 && num_2 > num_3
  puts "#{num_2} is greater"
else
  puts "#{num_3} is greater"
end
