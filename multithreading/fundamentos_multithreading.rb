

a = Thread.new {
  i = 1
  while i <= 10
    sleep(1)
    puts i
    i += 1
  end
}

#puts "Este código viene después del Thread"
#a.join
#puts "Este código se ejecutará después de que termine el thread 'a'"

def func1
  i = 0
  while i <= 2
    puts "func1 a: #{Time.now}"
    sleep(2)
    i += 1
  end
end

def func2
  j = 0
  while j <= 2
    puts "func2 en: #{Time.now}"
    sleep(1)
    j += 1
  end
end

puts "Started at: #{Time.now}"

t1= Thread.new{func1()}
t2 = Thread.new{func2()}

t1.join
t2.join

puts "End at #{Time.now}"