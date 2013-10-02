# Initially had trouble with multiple "Title" methods which were overriding each other and causing an error. Corrected this by removing the extra "title" and overwriting the method
class Book
  attr_accessor :title
  
  LITTLE_WORDS = %w{the a an and or in of}  # array of unwanted capitalized words

  def title=(book)
    @title = Book.new.capital_title(book)   # instance of Book class
  end

  def capital_title(book)
    book_name = book.split(" ")   #create an array of the title words
    book_name[0].capitalize!      #ALWAYS capitalize first word of book title

    book_name[1..-1].each do |title|    #iterate through subsequent title words
      title.capitalize! unless LITTLE_WORDS.include?(title)   #capitalize unless its included LITTLE_WORDS
    end

    capital_book_title = book_name.join(" ")  
  end
end