
variable = 0
#puts "Before thread variable = #{variable}"

a = Thread.new {
  # la variable puede ser modificada dentro del thread
  variable = 5
}

a.join
#puts "After thread variable = #{variable}"

variable2 = 0
#puts "Before variable2 = #{variable2}"

b = Thread.new {
  variable2 = 5
  thread_variable = 0
  puts "Inside thread_variable = #{thread_variable}"
}

c = Thread.new {
  puts "Inside  en c= #{thread_variable}"
}

b.join
c.join
#puts "=================\nAfter thread\nvariable = #{variable}"
#puts "thread_variable = #{thread_variable}" # undefined local variable or method `thread_variable' for main