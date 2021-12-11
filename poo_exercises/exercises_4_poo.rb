=begin
4. Hacer una clase llamada Password que siga las siguientes condiciones:
a. Que tenga los atributos contraseña.
b. Crear un método que indique si la contraseña es fuerte teniendo en
cuenta que si es fuerte debe tener mínimo una longitud de 6 caracteres.
c. Cambiar contraseña
=end

class Password
  attr_accessor :password

  def initialize(password)
    @password = password
  end

  def is_strong?
    password.size >= 6
  end

  def change_pass(current_password, new_pass, new_pass_confirmation)
    if current_password.eql?(password)
      if new_pass == new_pass_confirmation
        @password = new_pass_confirmation
      else
        raise "Your new password and confirmation don't match"
      end
    else
      raise 'Your current password is wrong'
    end
  end
end
