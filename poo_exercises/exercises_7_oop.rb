# frozen_string_literal: true

# 7. Cear una clase Hora con atributos para la horas, los minutos y los
# segundos. Esta deberá realizar lo siguiente:
# a. Constructor predeterminado con el 00:00:00 como hora por defecto.
# b. Constuctor parametrizado con horas, minutos y segundos.
# c. Valida: comprobará si la hora es correcta.
# d. Mostrar
# e. Igual: indica si la hora es la misma que se proporciona
# f. Menor Que: indica si la hora es anterior a la proporcionada
# g. Mayor que: Indica si la hora es posterior a la proporcionada.
class Hour
  attr_accessor :hours, :minutes, :seconds

  def initialize(hour=00, minutes=00,seconds=00)
    @hours = hour
    @minutes = minutes
    @seconds = seconds
  end

  def is_same(hour, minutes, seconds)
    if hour == @hours and minutes == @minutes and seconds == @seconds
      return true
    else
      return false
    end
  end

  def is_minor(hour)
    return (if hour < @hours then true end)
  end

  def is_major(hour)
    return (if hour > @hours then true end)
  end

  def show
    return "%02d:%02d:%02d" % ["#{@hours}", "#{@minutes}","#{@seconds}"]
  end

  def is_valid_hour
    return (if @hours <= 24 then true end)
  end

  def is_valid_minutes
    return (if @minutes <= 60 then true end)
  end

  def is_valid_seconds
    return (if @seconds <= 60 then true end)
  end

  def is_valid?
    return (if is_valid_hour and is_valid_minutes and is_valid_seconds then true end)
  end
end


date_1 = Hour.new(10, 10, 35)
puts date_1.is_valid?
