class Library
  attr_accessor :book_list

  def initialize(book_list)
    @book_list = []

  end

  def add_book(book_list)
    @book_list.push(
      Books.new(author, title)
    )
  end

  def show_list(book_list)
    book_list.each { |e| puts e }
  end

end

class Books
  attr_accessor :author, :title

  def initialize(author, title)
    @author = author
    @title = title
  end
end

class User
  attr_accessor :name, :id_nr

  def initialize(name)
    @name = name
    @id_nr = id_nr
    @users_list = []

  end

  def new_user(name)
    @users_list.push(
      User.new(name)
    )

  def self.id_nr
     puts new_user.SecureRandom.uunid
  end


  end


end

  def borrow

  end

  def back_book

  end

  def id_nr

  end

  def borrow_by_user

  end

  book_list = [
    "Remigiusz Mróz - 'Nieodnaleziona'",
    "B. A. Paris - 'Na skraju załamania'",
    "Katarzyna Nosowska - 'A ja żem jej powiedziała...'",
    "Zygmunt Miłoszewski - 'Jak zawsze'",
    "Justyna Kopińska - 'Z nienawiści do kobiet'",
    "Camilla Läckberg - 'Czarownica'",
    "R. J. Palacio - 'Cudowny chłopak'",
    "C.J. Tudor - 'Kredziarz'",
    "Katarzyna Berenika Miszczuk - 'Przesilenie'",
    "A.J. Finn - 'Kobieta w oknie'",
    "Dan Brown - 'Początek'",
    "Katarzyna Berenika Miszczuk - 'Szeptucha'",
  ]

# library = Library.new(book_list)
# library.show_list(book_list)
user = User.new('Maciek')
user.id_nr
user.new_user('Maciek')
