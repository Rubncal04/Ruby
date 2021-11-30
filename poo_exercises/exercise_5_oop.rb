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
  attr_accessor :name, :id, :balance, :annual_interest, :daily_interest

  def initialize(name, id, balance)
    @name = name
    @id = id
    @balance = balance
    @annual_interest = 35
    @daily_interest = 365 / @annual_interest
  end

  def update_balance
    @balance += @daily_interest
  end

  def save_money(balance)
    @balance = update_balance + balance
  end

  def withdraw(withdraw)
    @balance -= withdraw
  end

  def show
    puts "Name: #{@name.capitalize}\nID: #{@id}\nAnnual interest: #{@annual_interest}
Your balance: #{@balance}"
  end
end

def name
  print 'Enter your name: '
  gets.chomp
end

def id
  print 'Enter your id: '
  gets.chomp.to_i
end

def balance
  print 'Save your money: '
  gets.chomp.to_i
end

def withdraw
  print 'Withdraw: '
  gets.chomp.to_i
end

user = Account.new(name, id, balance)

user.update_balance
# user.save_money(balance)
user.withdraw(withdraw)
user.show
