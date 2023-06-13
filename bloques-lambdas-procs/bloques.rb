require 'colorize'
#Bloques

[1,2,3,4,5,6].map {|numero| numero **2 }

# Crear método que recibe bloque como parámetro
def metodo_con_bloque
  if block_given?
    puts "Antes de yield".red
    yield # Invoca y ejecuta un bloque
    puts "Después de yield".yellow
  else
    puts "Necesitas pasar un bloque como argumento".cyan
  end
end

metodo_con_bloque { puts "Soy un bloque".yellow }

class MiArray < Array
  def mapp
    mapped_array = Array.new
    self.each do |element|
      new_element = yield element
      mapped_array.push(new_element)
    end
    mapped_array
  end
end

arr = MiArray.new
arr.push(1)
arr.push(2)
arr.push(3)
arr.push(4)
arr.push(5)

p arr
puts "después de utilizar mapp"

new_array = arr.mapp { |numero| numero * 2 }
p new_array
