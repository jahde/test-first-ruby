# method to convert fahrenheit to celsius where 1 degree F is 5/9 of 1 degree C
def ftoc(f)
  (f-32) * (5.0/9) 
end

# method to convert celcius to fahrenheit
def ctof(c)
  (c * (9/5.0)) + 32
end

puts ftoc(212)

puts ctof(100)
