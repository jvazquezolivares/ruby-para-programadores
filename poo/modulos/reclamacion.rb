
module Reclamacion
  def queja
    mensaje("Nunca vi algo igual en todos mis años...")
  end

  def elogio
    mensaje("Estoy complacido de notar mejoras en...")
  end

  def mensaje(texto)
    raise NotImplementedError, "#{self.class} incluyó el módulo 
    Reclamacion pero no se definió el método 'mensaje'"
  end
end

class MisReclamos
  include Reclamacion

  def mensaje(texto)
    puts texto
  end
end

MisReclamos.new.queja
MisReclamos.new.elogio