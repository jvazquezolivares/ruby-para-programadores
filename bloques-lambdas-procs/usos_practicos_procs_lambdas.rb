
radios_circulos = [20, 40, 10, 17, 30, 42, 60]

def calcular_area(radio)
  Math::PI*radio*radio
end

#Método tradicional
#p radios_circulos.map { |radio| calcular_area(radio) }

area_circulo = -> r { Math::PI*r*r }

p radios_circulos.map(&area_circulo)

def mas_grande_que(numero)
  -> x { x > numero }
end

mas_grande_que_10 = mas_grande_que(10)
mas_grande_que_20 = mas_grande_que(20)

arr = [15, 12, 5, 6, 9, 2, 20, 45, 80, 32, 10]

puts "Números más grandes que 10"
p arr.select(&mas_grande_que_10)

puts "Números más grandes que 20"
p arr.select(&mas_grande_que_20)



class Persona
  def initialize(nombre, salario, edad)
    @nombre, @salario_diario, @edad = nombre, salario, edad
  end

  def calcular_salario
    @salario_diario * 7
  end

  def mayor_cincuenta?
    @edad > 50
  end
end


personas = [
  Persona.new("Jaime", 100, 30),
  Persona.new("Omar", 150, 25),
  Persona.new("Patricia", 40, 60),
  Persona.new("Yolanda", 80, 55)
]

puts "Cálculo de salarios: "
p personas.map(&:calcular_salario)

puts "Personas mayores de 50: "
p personas.select(&:mayor_cincuenta?)

