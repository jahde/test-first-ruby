#method to translate a phrase to piglatin. For some reason word[0] was causing a fixnum error so I had to instead use word[0..0] to add the zeroeth element to the string.
def translate(phrase)
  piglatin = []
  vowels = %w[a e i o u]  #["a", "e", "i", "o", "u", "y"]
  consonants = ("a".."z").to_a - vowels
  
  phrase.split.each do |word|
    if (vowels.to_s).include?(word[0])
      word << "ay"
    elsif word.match(/qu/) #used match to find "qu" and index to find element of "qu". 
      result = word.index('qu')
      pos = result + 1
      word = word[pos+1..-1] + word[0..pos] + "ay"  
    elsif word.match(/qu/) #used match to find "sch" and index to find element of "sch". 
      result = word.index('sch')
      pos = result + 2
      word = word[pos+1..-1] + word[0..pos] + "ay"  
    elsif (consonants.to_s).include?(word[0]) && (consonants.to_s).include?(word[1]) && (consonants.to_s).include?(word[2])
      word = word[3..-1] + word[0..2] + "ay"
    elsif (consonants.to_s).include?(word[0]) && (consonants.to_s).include?(word[1])
      word = word[2..-1] + word[0..1] + "ay"
    elsif (consonants.to_s).include?(word[0]) 
      word = word[1..-1] + word[0..0] + "ay"
    else (consonants.to_s).include?(word[0]) 
      word = word[1..-1] + word[0..0] + "ay" 
    end
  piglatin << word
  end
  
  piglatin.join(' ')
end

puts translate("apple")
puts translate("banana")

puts translate("cherry")
puts translate("eat pie")

puts translate("three")
puts translate("school")
puts translate("quiet")
puts translate("square")
puts translate("the quick brown fox")
