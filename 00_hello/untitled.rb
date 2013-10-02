class Dictionary
  attr_accessor :entries, :keywords
  
  def initialize
    @entries = {}
  end
  
  def add(entry)
    if entry.is_a?(String)   #check if argument is a string
      @entries[entry] = nil  #set value to nil
    else
      entry.each do |key, value|    #iterate over the entry argument taking in the key-value pair
        @entries[key] = value       #for each iteration assign the value to the key of the @entries instance
      end
    end
  end
  
  def include?(key)                 
    self.keywords.include?(key)     #checks whether the argument key is included in the keywords
  end
  
  
  
  