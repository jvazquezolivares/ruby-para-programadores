
parent_scope = "I'm available everywhere"

3.times do
  inner_scope = "Only accessed in the scope above: -"
  puts "#{inner_scope} #{parent_scope}}"
end

def gen_times(factor)

  Proc.new {|n| n*factor } # remembers the value of factor at the moment of creation
end

times3 = gen_times(3)
times5 = gen_times(5)

times3.call(12)               #=> 36
times5.call(5)                #=> 25





















