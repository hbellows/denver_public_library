require './test/test_helper'
require './lib/author'
require './lib/book'

class AuthorTest < Minitest::Test

  def test_an_author_has_a_collection
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_equal [], charlotte_bronte.books
  end

  def test_it_can_add_an_author_to_a_book
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    # require "pry"; binding.pry
    charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    assert_equal [], charlotte_bronte.books

    charlotte_bronte.add_book("Villette", "1853")
    assert_equal [], charlotte_bronte.books
  end
end
