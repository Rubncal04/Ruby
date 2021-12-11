# frozen_string_literal: true

# 6. Crear una clase Cafetera con los atributos capaciadadMaxima (la cantidad
# máxima de café que puede contener la cafetera) y _cantidadActual( la
# cantidad actual de café que hay en la cafetera). Esta debe realizar los
# siguientes métodos:
# a. Contructor predeterminado: establece la capacidad máxima en 1000
# y la actual en cero.
# b. Constructor con la capacidad máxima y la cantidad actual: si la
# cantidad actual es mayor que la capacidad máxima de la cafetera, la
# ajustará al máximo.
# c. Llenar la cafetera: pues eso, hace que la cantidad actual sea igual a
# la capacidad.
# d. ServirTaza: simula la acción de servir una taza con la capacidad
# indicada. Si la cantidad actual de café “no alcanza” para llenar la
# taza, se sirve lo que quede.
# e. Vaciar la cafetera: pone la cantidad de café actual en cero.
# f. Agregar Café: añade a la cafetera la cantidad de café indicada.
class CoffeeMachine
  attr_accessor :capacity_max, :capacity_current

  def initialize(capacity_max=1000, capacity_current=0)
    @capacity_max = capacity_max
    @capacity_current = capacity_current
  end

  def fill_maker
    @capacity_current = @capacity_max
  end

  def serve_coffee(capacity_cup)
    if capacity_cup > @capacity_current
      @capacity_current = 0
    else
      @capacity_current -= capacity_cup
    end
  end

  def maker_empty
    @capacity_current = 0
  end

  def add_coffee(quantity)
    @capacity_current += quantity
  end
end

cup = CoffeeMachine.new
puts cup.serve_coffee(2000)
# puts cup.maker_empty
puts cup.add_coffee(500)
