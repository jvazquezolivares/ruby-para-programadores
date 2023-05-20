module Ayto
  def potato
     'POTATO'
  end
end

module Ahto
  def potato
     'HOLA MUNDO'
  end
end


class Potato
  include Ayto
  include Ahto
end

puts Potato.new.potato