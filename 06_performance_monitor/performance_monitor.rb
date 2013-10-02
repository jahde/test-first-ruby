# Time taken in *measure is end time minus start time. End time is always the most current time (Time.now)
# Used (EndTime - StartTime / number of times) to find the average with default number of times set to 0
def measure(num = 1)
  start_time = Time.now
  num.times do |n|
    yield             #return block
  end
  (Time.now - start_time) / num       #average oer num times
end

n = 0
measure(4) do
  n += 1
end
puts n

