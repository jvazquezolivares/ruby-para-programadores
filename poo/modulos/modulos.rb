# Creación de un módulo en Ruby
module ModuloDeEjemplo
  #Constantes
  PI = 3.1415

  #Clases
  class ClaseEnModulo
  end

  #métodos
  def metodo_en_modulo
  end

  #otros módulos
  module OtroModulo
  end
end

module Matematicas
  PI = 3.1415

  def self.calculate_area(*values)
  end

  module Algebra
    class Baldor
    end
  end
end

Matematicas::PI
Matematicas.calculate_area([])
Matematicas::Algebra::Baldor.new

