module SuperPoderes
  def volar
    "volando..."
  end

  def saltar(objeto)
    "saltando #{objeto} de un solo brinco"
  end

  def superheroe?
    true
  end

  def nombre_superheroe
    'Superman'
  end
end

class Persona
  attr_reader :nombre, :edad, :ocupacion

  def initialize(nombre, edad, ocupacion)
    @nombre, @edad, @ocupacion = nombre, edad, ocupacion
  end

  def superheroe?
    false
  end
end

Persona.extend(SuperPoderes)
puts Persona.volar

# aplicar superpoderes a personal común
clark = Persona.new("Clark Kent", 30, "reportero")
clark.extend(SuperPoderes)
puts clark.nombre_superheroe
puts clark.volar
puts clark.superheroe?