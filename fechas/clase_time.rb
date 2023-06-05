
#Unix epoch/Tiempo unix 1ero de Enero de 1970 00:00
#13/04/1982

#Crear objeto Time del tiempo actual
t = Time.now

#Crear objeto Time con el método at
t2= Time.at(1234334399)

t3 = Time.now

p t3.day
p t3.month
p t3.year
puts t3.hour # => 0
puts t3.min # => 0
puts t3.sec # => 0
puts t3.subsec # => 0

p t3.monday?
p t3.sunday?
p t3.friday?

p t3.wday
p "t3.yday: #{t3.yday}"

p "Segundos desde el tiempo Unix: #{t3.to_i}"

#Algunas otras operaciones con Time
t1 = Time.new(2010)
t2 = Time.new(2011)

p t1 == t2 #=> false
p t1 == t1 #=> true
p t1 <  t2 #=> true
p t1 >  t2 #=> false

# between?
p Time.new(2010,10,31).between?(t1, t2)





