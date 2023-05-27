
#Crear un Struct
Persona = Struct.new :nombre, :edad
persona1 = Persona.new
persona1.nombre = "Javier Vázquez"
persona1.edad = 41

puts "Hola, soy #{persona1.nombre}, tengo #{persona1.edad} años"

#Inicializando atributos con el constructor del Struct
persona2 = Persona.new("Eduardo", 30)
puts "Hola, soy #{persona2.nombre}, tengo #{persona2.edad} años"

Person = Struct.new :nombre, :edad do
  #crear método dentro de Struct
  def sobre_mi
    puts "Hola, soy #{self.nombre}, tengo #{self.edad} años"
  end
end

persona3 = Person.new("María", 20)
persona3.sobre_mi


#No se permiten crear atributos al vuelo
Person2 = Struct.new :nombre, :edad
persona4 = Person2.new("Javier", 41)
#La siguiente línea da un error porque el atributo profesión
#no fue definido en el struct
persona4.profesion = "Ingeniero"

