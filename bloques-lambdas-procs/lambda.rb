require 'colorize'

# Crear lambda en Ruby
lambda_con_parametro = lambda { |x,y| x * y }
lambda_con_parametro2 = -> (x, y) { x * y}
lambda_sin_parametros = -> { puts "Soy un lambda" }

p lambda_con_parametro.call(2, 5)
p lambda_con_parametro2.call(3, 3)
lambda_sin_parametros.call

# Diferencias entre lambda y proc
#1 
proc_con_parametros = Proc.new {|x,y,z| puts "me da igual que no me pasen los parámetros: #{x}, #{y}, #{z}" }
proc_con_parametros.call #No le estoy pasando sus parámetros
proc_con_parametros.call(1, 2, 3, 4, 5, 6) #Le paso más parámetros de los que requiere

lambda_con_parametro.call(2, 2)

#lambda_con_parametro.call(2, 2,3, 4, 5, 6) #Le paso más parámetros

#2 El comportamiento de return dentro de los procs, nos saca del scope del me´todo
#padre y las lambdas no.

def usando_return_con_proc
  pfn = proc { return }
  puts "Antes de llamar al proc"
  pfn.call
  puts "Después de llamar al proc"
end

usando_return_con_proc

def usando_return_lambdas
  pfn = -> { return }
  puts "antes de llamar al lambda"
  pfn.call
  puts "Después de llamar al lambda"
end

usando_return_lambdas

#Un ejemplo de típico
class Producto < ActiveRecord::Base
  scope :stock, -> (number) { where("stock > ?", number) }
end

Producto.stock(10)

