# Encapsulamiento
class Perro
  attr_accessor :nombre
  attr_reader :peso
  attr_writer :edad

  def initialize(nombre, peso, edad)
    @nombre = nombre
    @peso = peso
    @edad = edad
  end

=begin  
  método para modificar variable de instancia
  def nombre=(nombre_nuevo)
    @nombre = nombre_nuevo
  end
=end  

  #lectura de variable de instancia desde un método privado
  def decir_nombre
    nombre
  end

=begin
  declración de métodos privados
  private
  def nombre
    @nombre
  end
=end
end

perro = Perro.new("hansel", 12, 3)

perro.nombre = "Firulais"

puts perro.nombre

#leyendo por medio del método generado con attr_reader
puts perro.peso

#Seteando valor de variable edad por medio del método generado con attr_writter
perro.edad = 2

p perro.inspect