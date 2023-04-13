#Creación de una clase en Ruby
class NombreClase

  def initialize(nombre)
    puts "Dentro del método constructor"
    @nombre = nombre
  end

  def saludo
    puts "Hola #{@nombre}"
  end
end

# Instanciar una clase
objeto = NombreClase.new("Javier Arturo")
objeto.saludo
#Invocar metodo de una clase
#objeto.saludo

#instanciar e invocar método de instancia
#NombreClase.new.saludo
