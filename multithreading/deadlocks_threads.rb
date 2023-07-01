#DEADLOCKS

require 'thread'

mutex = Mutex.new
cd = ConditionVariable.new

a = Thread.new do
  mutex.synchronize do
    puts "Thread 'a' ahora está esperando por la señal del thread 'b' "
    cd.wait(mutex)
    puts "'a' Ahora tiene la posibilidad the usar el recurso"
  end
end

puts "Ahora en el thread 'b'..."

b = Thread.new do
  mutex.synchronize do
    puts "thread 'b' está utilizando el recurso necesitado 
    por 'a' y una vez que termine, enviará una señal a el thread 'a' "
    sleep(4)
    cd.signal #Se envía la señal de la variable condicional
    puts "'b' Ha enviado una señal a 'a' para adquirir el recurso"
  end
end

a.join
b.join