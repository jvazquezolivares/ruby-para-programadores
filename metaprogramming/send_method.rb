
class Book
  attr_accessor :title, :author, :length

  def assign_values(values)
    values.each do |key, value|
      self.send("#{key}=", value)
    end
  end
end

book_info = { 
  title: "1984",
  author: "George Orwel",
  length: 300
}

book = Book.new

#book.title = book_info[:title]
#book.author = book_info[:author]
#book.length = book_info[:length]

book.assign_values(book_info)

p book

