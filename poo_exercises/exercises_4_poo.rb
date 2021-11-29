=begin
4. Hacer una clase llamada Password que siga las siguientes condiciones:
a. Que tenga los atributos longitud y contraseña. La longitud por
defecto será de 8
b. Crear un método que indique si la contraseña es fuerte teniendo en
cuenta que es fuerte debe tener mínimo una longitud de 6.
c. Mostrar
d. Cambiar contraseña
=end

class Password
  attr_accessor :password, :long

  def initialize(password)
    @password = password
    @long = 8
  end

  def is_strong
    if @password.size >= 6 and password.size <= @long
      puts "Your password is strong"
    else
      puts "Try again"
    end
  end

  def show_pass
    puts @password
  end

  def is_user(log_in)
    if log_in.password == @password
      @is_user = true
    else
      @is_user = false
    end
  end

  def change_pass
    if @is_user
      print "Enter a new password: "
      pass = gets.chomp
      print "Enter again: "
      pass1 = gets.chomp
      @password = pass1
    end
  end

end

def pass_user
  print "Enter password: "
  password = gets.chomp
end

user = Password.new(pass_user)
# user.is_strong

user2 = Password.new(pass_user)
user.is_user(user2)

user.change_pass
user.show_pass
