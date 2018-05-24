class Book
  attr_reader :author_first_name,
              :author_last_name,
              :title,
              :publication_date

  def initialize(book)
    # @book = {}
    @author_first_name  = book[:author_first_name]
    @author_last_name = book[:author_last_name]
    @title = book[:title]
    @publication_date = book[:publication_date]
    #format publication_date to '1960'?
    # @book = Hash.new(0)
    # require "pry"; binding.pry
  end
end
