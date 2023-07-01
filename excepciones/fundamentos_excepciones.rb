require 'colorize'
#puts 67 / 0

# Manejo de excepciones
begin
  puts "Esto se va a ejecutar".red
  puts 67 / 0
  puts "Esto no se va a ejecutar porque se produjo una excepción".white
rescue
  puts "La excepción ha sido rescatada y podemos continuar!!".cyan
end

begin
  puts 67 / 0 #ZeroDivisionError
  "abc" * "cde"
rescue ZeroDivisionError
  puts "Rescatando excepción ZeroDivisionError".blue
rescue TypeError
  puts "Rescatando excepción TypeError".red
end

begin
  "abc" * "bcd"
rescue TypeError => exception
  puts "Rescatando error TypeError con objeto: "
  p exception
ensure
  puts "Este código se va a ejecutar"
end




