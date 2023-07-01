require 'colorize'
#throw -> raise

def validar_edad(edad)
  raise("Edad inválida") unless (0..105).include?(edad)
end

def validar_edad2(edad)
  raise TypeError.new("Tipo inválido") if edad.class != Integer
end

begin
  validar_edad2("110")
rescue => e
  p e
end

class ValidadorEdad < StandardError; end

def validar_edad3(edad)
  raise ValidadorEdad.new("Excepción personalizado") unless (0..99).include?(edad)
end

begin
  validar_edad3(100)
rescue ValidadorEdad => e
  p e.message
end

class CircuitError < StandardError
  def initialize(message, state)
    super(message)
    @state = state
  end

  attr_reader :state
end

begin 
  raise CircuitError.new("The circuit breaker is active", "OPEN")
rescue CircuitError => error
  puts "#{error.class}: #{error.message}. The STATE is: #{error.state}.".cyan
end

module MyCircuit
  # ...
  module Errors
    class CircuitError < StandardError; end
  end
  # ...
end

raise MyCircuit::Errors::CircuitError.new('Custom error message')

class Document
  class BadDocumentFormatError < StandardError
    def initialize(message)
      super message
    end
  end
end