class Book
  def initialize(title, number_of_pages)
    @title = title
    @number_of_pages = number_of_pages
  end

  def show_book
    "#{@title} has #{@number_of_pages} pages"
  end
end

book_1 = Book.new('Bolek i Lolek', 120)
book_2 = Book.new('W pustyni i w piszczy', 200)
book.show_book

def show_books(books)
  books.each { |book| book.show_book  }
end

show_books([book_1, book_2])
