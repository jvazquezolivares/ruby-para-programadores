require 'ostruct'

p = OpenStruct.new
p.nombre = "Javier"
p.edad = 41

puts "Hola, soy #{p.nombre}, tengo #{p.edad} años"

hash = {
  nombre: "Eduardo",
  edad: 41,
  profesion: "Ingeniero"
}

persona2 = OpenStruct.new(hash)
puts "Hola, soy #{persona2.nombre}, tengo #{persona2.edad} años y soy un #{persona2.profesion}"