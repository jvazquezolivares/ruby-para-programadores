# Polimorfismo

class Figure
  def draw
    raise NotImplementedError
  end
end

class Circle < Figure
  attr_reader :radius

  def draw
    puts "dibujar círculo"
  end
end

class Square < Figure
  attr_reader :base, :height

  def draw
    puts "dibujar un cuadrado"
  end
end

class Triangle < Figure
  attr_reader :base, :height

  def draw
    puts "dibujar triangulo"
  end
end

def draw_figures(figure, x, y)
  set_coordinates(x, y)
  figure.draw
end

[Circle.new, Circle.new, Circle.new, Square.new, Triangle.new].each do |figure|
  draw_figures(x, y, figure)
end