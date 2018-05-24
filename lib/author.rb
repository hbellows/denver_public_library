class Author
  attr_reader :author,
              :books

  def initialize(author_full_name)
    @author = author_full_name
    # @author_first_name = author[:first_name]
    # @author_last_name = author[:last_name]
    @books = []

  end

  def add_book(title, publication_date)
    # require "pry"; binding.pry
    new_book = Hash.new
    new_book[:author_first_name] = author[:first_name]
    new_book[:author_last_name] = author[:last_name]
    new_book[:title] = title
    new_book[:publication_date] = publication_date
    #format publication_date to 10/16/1847?
    Book.new(new_book)
    @books << Book.new(new_book)
  end



end
