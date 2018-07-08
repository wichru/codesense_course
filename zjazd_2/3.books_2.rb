class Book
  def initialize(title, number_of_pages)
    @title = title
    @number_of_pages = number_of_pages
  end

  def to_s
    "#{@title} has #{@number_of_pages} pages"
  end

  def title
    @title
  end

  def title=(title)
    @title = title
  end

  def number_of_pages
    @number_of_pages
  end

end

books = [
  Book.new('Bolek i Lolek', 120),
  Book.new('Pan Tadeusz', 300),
  Book.new('W pustyni i w puszczy', 450)
]


book = books[0]
puts book
book.title = "Inny tytuł"
puts book

def add_additional_info_to_books(books)
  books.each do |e|
    if e.number_of_pages > 200
      e.title += ' (wiele stron)'
    end
  end
end

books_with_additional_info = add_additional_info_to_books(books)
puts books_with_additional_info
# def book_exist?(books, title)
#   books.any? { |book| book.title == title }
# end
#
# puts book_exist?(books, "Sierotka Marysia")
# puts book_exist?(books, "Pan Tadeusz")
