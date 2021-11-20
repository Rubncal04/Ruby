=begin
4. Una fábrica ha sido sometida a un programa de control de
contaminación para lo cual se efectúa una revisión de los puntos de
contaminación generados por la fábrica. El programa de control de
contaminación consiste en medir los puntos que emite la fábrica en
cinco días de una semana y si el promedio es superior a los 170
puntos entonces tendrá la sanción de parar su producción por una
semana y una multa del 50% de las ganancias diarias cuando no se
detiene la producción. Si el promedio obtenido de puntos es de 170 o
menos entonces no tendrá ni sanción ni multa. El dueño de la fábrica
desea saber cuanto dinero perderá después de ser sometido a la
revisión.
=end

puts "Avarage of points produced by your company"

print "What are the daily earnings? "
daily_earnings = gets.chomp.to_i

print "Points produced per 5 days: "
points = gets.chomp.to_i

avarage_points = points / 5

if avarage_points <= 170
  puts "You can follow working"
else
  puts "You should pay: $#{(daily_earnings * 0.50)} per day"
  puts "You lose: $#{(daily_earnings * 0.50) * 5} per 5 days"
end
