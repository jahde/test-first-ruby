# method returns a string
def echo(word)
  word
end

# method to upcase a given string
def shout(word)
  word.upcase
end

# method to repeat a given string. Create an array of out of word so that I could use "join" to add a space.
def repeat(word,times = 2)
  ([word] * times).join(' ')
end

# method to return the first *number* characters of a string
def start_of_word(word,number)
  word[0,number]
end

# method to return the first word of a string. Used split to place string into an array then the built in operator *first to return the first word.
def first_word(word)
  word.split.first
end

# method to capitalize the important words of a movie. Used split to place movie names into an array. Then created an array of little words. Used each to iterate over each word in the movie title and capitalized every word unless it was a little word. Returned the movie title with capital first word.  
def titleize(word)
  movies = word.split
  little_words = ["and", "over", "the"]
  
  movies.each do |title|
    title.capitalize! unless (little_words.to_s).include?(title)
  end
  
  movies.first.capitalize!
  movies.join(' ')
end

puts echo("hello")
puts echo("bye")

puts shout("hello world")

puts repeat("hello")
puts repeat("hello", 4)

s = "abcdefg"
puts start_of_word(s, 1)
puts start_of_word(s, 3)

puts first_word("Hello World")

puts titleize("jaws")
puts titleize("david copperfield")
puts titleize("war and peace")
puts titleize("the bridge over the river kwai")