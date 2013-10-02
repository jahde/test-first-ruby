# Iterating through the block using yield.split.each (iterate through array) and then reversing the words
def reverser(&block)
  reversed = []
  yield.split.each do |word|
    reversed << word.reverse
  end
  reversed.join(' ')
end

# Googled and found out how to add optional parameter to adder block. It's default stays at 1
def adder(num=1, &block)
  yield + num
end

# Use times iterator to repeat the block
def repeater(num=0)
  if num == 0
    return yield    #return the block!
  else
    num.times do |n|    #iterate over num times
      yield            # block pass
    end
  end
end

puts reverser {"hello world"}


puts adder {5}
puts adder(3){5}

n = 0
repeater(3) do
  n += 1
end
puts n
