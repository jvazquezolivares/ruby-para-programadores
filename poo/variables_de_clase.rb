class Box
  BOX_COMPANY = 'MIGUELITO'

  # Crear variable de clase
  @@count = 0

  def initialize
    @@count += 1
  end

  class << self
    def printCount
      puts "Count: #{@@count}"
    end
  end
  
end

Box.new
Box.new
Box.new

Box.printCount
puts Box::BOX_COMPANY