#Método to_proc

#to_proc en Hashes
class Hash
  #def to_proc
  #  -> key { self[key] }
  #end
end

hash = { a: 1, b: 2, c: 3, d: 4 }

p hash.to_proc.call(:b) #=> 2
p hash.to_proc.call(:c) #=> 3

p [:a, :b, :d].map(&hash)

#to_proc en Símbolos

class Symbol
  #def to_proc()
  #  -> v { v.send(self) }
  #end
end

#p "Hola Mundo!".send(:upcase)
#p "Hola mundo!".upcase

#p :upcase.to_proc.call("Hola Mundo!!")

p ["ruby", "es", "el", "mejor", "lenguaje", "de", "programación"].map(&:upcase)
p [1,2,3,4,5,6,7,8,9].map(&:to_s)

