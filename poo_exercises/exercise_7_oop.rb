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

  def is_same?(hour, minutes, seconds)
    hour == @hours && minutes == @minutes && seconds == @seconds
  end

  def is_before?(hour, minutes, seconds)
    hour <= @hours && minutes <= @minutes && seconds < @seconds
  end

  def is_after?(hour)
    hour >= @hours && minutes >= @minutes && seconds > @seconds
  end

  def show
    "%02d:%02d:%02d" % ["#{@hours}", "#{@minutes}","#{@seconds}"]
  end

  def is_valid_hour?
    @hours <= 24 && @hours >= 1
  end

  def is_valid_minutes?
    @minutes <= 60 && @minutes >= 0
  end

  def is_valid_seconds?
    @seconds <= 60 && @seconds >= 0
  end

  def is_valid?
    is_valid_hour? and is_valid_minutes? and is_valid_seconds?
  end
end
