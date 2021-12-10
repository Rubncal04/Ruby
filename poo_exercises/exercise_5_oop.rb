# frozen_string_literal: true

# 5. Crear una clase Cuenta con atributos para el número de cuenta (, el
# número de identificación del cliente, el saldo actual y el interes anual que se
# aplica a la cuenta. Define en la clase los siguientes métodos:
# a. ActualizarSaldo(): actualizará el saldo de la cuenta aplicándole el
# interés diario (interes anual dividido entre 365 aplicado al saldo
# actual)
# b. Ingresar: permitirá ingresar una cantidad en la cuenta
# c. Retirar: permitirá sacar una cantidad de la cuenta siempre y cuando
# haya saldo.
# d. Mostrar: método que permita mostrar todos los datos de la cuenta
class Account
  attr_accessor :name, :id, :balance
  ANNUAL_INTEREST = 31.2
  DAILY_INTEREST = (ANNUAL_INTEREST / 365).to_f.round(2)

  def initialize(name, id, balance)
    @name = name
    @id = id
    @balance = balance
  end

  def update_balance
    @balance += DAILY_INTEREST
  end

  def deposit(balance)
    @balance = update_balance + balance
  end

  def withdraw(withdraw)
    if withdraw > @balance
      @balance = 0
    else
      @balance -= withdraw
    end
  end

  def show
    puts "Name: #{@name.capitalize}\nID: #{@id}\nAnnual interest: #{ANNUAL_INTEREST}
Your balance: #{@balance}"
  end
end

print 'Enter your name: '
name = gets.chomp

print 'Enter your id: '
id = gets.chomp.to_i

print 'Initial balance: '
balance = gets.chomp.to_i

print 'Save money: '
save_money = gets.chomp.to_i

print 'Withdraw: '
withdraw = gets.chomp.to_i

user = Account.new(name, id, balance)

user.update_balance
# user.save_money(save_money)
user.withdraw(withdraw)
user.show
