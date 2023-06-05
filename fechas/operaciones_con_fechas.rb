
time = Time.new + 10
p Time.new > time

seconds_in_a_day = 60 * 60 * 24
tomorrow = Time.now + seconds_in_a_day
p tomorrow

#En rails puedo...
class Integer
  def day
    self*60*60*24
  end
end

cinco_dias = Time.now + 5.day
p cinco_dias