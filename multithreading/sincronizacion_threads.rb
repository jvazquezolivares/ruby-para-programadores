
class Orden
  attr_accessor :monto, :status
  def initialize(monto, status)
    @monto, @status = monto, status
  end

  def pending?
    @status == 'pending'
  end

  def cobrar
    puts "cobrando..."
    self.status = 'paid'
  end
end

orden = Orden.new(100.00, 'pending')
mutex = Mutex.new
5.times.map do
  Thread.new do
    mutex.synchronize do
      if orden.pending?
        orden.cobrar
      else
        puts "Pago realizado"
      end
    end
  end
end.each(&:join)
