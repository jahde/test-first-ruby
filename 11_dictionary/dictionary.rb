class Dictionary
  attr_accessor :entries#, :keywords
  
  def initialize
    @entries = {}            #create new empty hash for entries instance
  end
  
  def add(entry)
    if entry.is_a?(String)   #check if argument is a string, e.g. not a key-value pair
      @entries[entry] = nil  #set value to nil
    else
      entry.each do |key, value|    #iterate over the entry argument taking in the key-value pair
        @entries[key] = value       #for each iteration assign the value to the key of the @entries instance
      end
    end
  end
  
  def keywords
    @entries.keys.sort            #sorts hash by keys, found on stackoverflow
  end
  
  def include?(key)                 
    self.keywords.include?(key)     #checks whether the argument key is included in the keywords list
  end
  
  def find(word)               #looking for keys that match word argv in the @entries hash
    hash = {}                   #create empty hash to store key-value pairs that we iterate through
    @entries.each do   |key, value|   #iterate through @entries hash 
      if key[0...word.length] == word    #check if part of key matches the word we are looking for
        hash[key] = value             #stores that key-value pair in our hash (matches for the word)
      end
    end
    hash                      #return the matched key-value pair (hash)
  end
    
  def printable
    output = ""            # assign an empty string to output, to store the text
    @entries.sort.each do |key, value|      #first sort the hash instance of @entries and iterate through key-values
      output += "[#{key}] \"#{value}\"\n"   #this one took me some time to figure out, after extensive googling I     
    end                                     #found a way to use the hash value as a regular expression, adding it to output. The escape clause "# and "\ threw me off at first but I understand regex a little better now.
    output.chomp           # delete extra space in output
  end
end
  
  
  