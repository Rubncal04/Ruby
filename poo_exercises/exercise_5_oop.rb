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
  attr_accessor :name, :id, :balance, :annual_interest

  def initialize(name, id, balance=0, annual_interest)
    @name = name
    @id = id
    @balance = balance
    @annual_interest = annual_interest
  end

  def update_balance
    daily_interest = (annual_interest / 365)
    @balance += (daily_interest * balance / 100).to_f.round(2)
  end

  def deposit(balance)
    @balance += balance
  end

  def withdraw(withdraw)
    if withdraw > @balance
      raise "You don't have enough money"
    else
      @balance -= withdraw
    end
  end

  def show
    "Name: #{@name.capitalize}\nID: #{@id}\nAnnual interest: #{annual_interest}
Your balance: #{@balance}"
  end
end
