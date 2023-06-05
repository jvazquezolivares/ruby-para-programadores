require 'date'

hoy = Date.today
#p hoy

#Operaciones aritméticas con Date
#p Date.today + 5

#Parsear fechas
#p Date.parse("10/10/2010")
p Date.parse("September 3")
#p Date.parse("May I have a cup of coffee, please?")

#CONSTANTES DE FECHAS
p Date::MONTHNAMES
p Date::ABBR_MONTHNAMES
p Date::DAYNAMES
p Date::ABBR_DAYNAMES

p DateTime.now



