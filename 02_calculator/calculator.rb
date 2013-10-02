# method to add two numbers together
def add(first, second)
  first + second
end

# method to subtract one number from another
def subtract(first,second)
  first - second
end

# method to sum numbers of an array. Initially tried the for method but each was much cleaner for me
def sum(numbers)
  sum = 0
  numbers.each do |num|
    sum = sum + num
  end
  sum
end

# method to multiply numbers. I had to google in order to find out how to include multiple arguments using "*numbers". After that the code was straightforward re-using the code from before
def multiply(*numbers)
  sum = 1
  numbers.each do |num|
    sum = sum * num
  end
  sum
end

# method to raise a number to the power "n"
def power(first,n)
  first ** n
end

# method to obtain factorial of a number. Re-used the code from before and changed it to reflect the factorial of n * (n-1)! Used range (1..number)
def factorial(number)
  if number == 0
    1
  else
    sum = 1
    (1..number).each do |num|
      sum = sum * num
    end
    sum
  end
end

puts add(0,0)

puts subtract(10,4)

puts sum([1,3,5,7,9])

puts multiply(1,2,3,4,5)
puts multiply(2,2)

puts power(2,3)

puts factorial(2)
puts factorial(5)
puts factorial(10)
