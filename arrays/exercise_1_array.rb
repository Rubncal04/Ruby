=begin
1. De los n elementos de un vector dado calcule:
a. La sumatoria
b. La productoria
c. El Mayor Elemento
d. El menor Elemento
=end

print "Tell me one number: "
highest_num = gets.chomp.to_i

array_all = [highest_num]
# array_all[0] = highest_num
smallest_num = highest_num

(1..6).each do |num|
  print "Tell other number: "
  number = gets.chomp.to_i
  array_all << number

  if array_all[num] < smallest_num
    smallest_num = array_all[num]
  end

  if array_all[num] > highest_num
    highest_num = array_all[num]
  end
end

puts "This is the array: #{array_all}"
puts "The highest number is: #{highest_num}"
puts "The smallest number is: #{smallest_num}"
