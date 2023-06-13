require 'colorize'




funcion = proc { |nombre| puts "Hola #{nombre}, soy un proc".red }
funcion2 = Proc.new { |nombre| puts "Hola #{nombre}, soy un proc".yellow }

funcion.call("Javier")
funcion2.call("Arturo")

#Método que recibe procs como parámetros
def invocar_proc(proc)
  proc.call("Eduardo")
end

invocar_proc(funcion)

#procs dentro de hashes
hash_con_funciones = {
  funcion1: funcion,
  funcion2: funcion2
}

square = Proc.new { |x| x**2 }
p square.call(3)
p square.(3)
p square[3]

hash_con_funciones[:funcion2].call("Oscar")

#RELACIÓN ENTRE PROCS Y BLOQUES

def ejecutar_bloque_como_proc(&bloque)
  bloque.call
end

ejecutar_bloque_como_proc { puts "Soy un bloque que será convertido en un proc".cyan }

funcion3 = Proc.new { "Soy la funcion3 dentro del metodo ejecutar_bloque_como_proc" }

ejecutar_bloque_como_proc(&funcion3)

#PROCS COMO PARÁMETROS Y COMO RETORNO DE UNA FUNCIÓN

proc_con_parametros = proc { |x, y| puts "El resultado de la suma es: #{x + y}".cyan}
proc_con_parametros.call(2, 3)

def devolver_proc
  Proc.new { |nombre| puts "Hola #{nombre}, este es un proc devuelto por un método" }
end

guardar_proc_devuelto = devolver_proc

guardar_proc_devuelto.call("Javier")

def recibir_y_devolver_proc(nombre, &block)
  block.call(nombre)
end

#recibir_y_devolver_proc "Javier" do |nombre|
#  puts "#{nombre}, esto se ve realmente extraño"
#end

recibir_y_devolver_proc("Javier") { |nombre| puts "#{nombre}, esto se ve realmente extraño".cyan }

