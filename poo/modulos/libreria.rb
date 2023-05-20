module MyLib

  def self.included(base)
    puts "MyLib está siendo incluído en #{base}!!"
    base.extend(MetodosClase)
  end

  def algun_metodo
    puts "Un método a incluir!!"
  end

  module MetodosClase
    def metodo_de_clase
      puts "Este método fue incluído primero en MyLib::MetodosClase"
    end
  end
end

class MyClass
  include MyLib
  def algun_metodo
    puts "Método de instancia"
  end
end


MyClass.new.algun_metodo
