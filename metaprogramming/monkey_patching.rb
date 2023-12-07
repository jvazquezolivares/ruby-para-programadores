require 'date'

puts "Antes de aplicar monkey patch"

p Date.methods.include?(:leap_year?)

class Date
  def leap_year?
    (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
  end
end

puts "Después de monkey patch"
date = Date.new(2023, 10,29)
p date.leap_year?

date = Date.new(2024, 2, 29)
p date.leap_year?

class String
  def mensaje_para(name)
    self.concat(name)
  end
end

p "Hola cómo estás? ".mensaje_para("Alberto")

class Array
  def print
    p self
  end
end

[1,2,3,4,5,6,7,"hola"].print