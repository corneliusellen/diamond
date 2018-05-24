require 'minitest/autorun'
require_relative 'diamond'

class DiamondTest < Minitest::Test

  def test_it_makes_an_array_of_the_alphabet_given_a_letter
    assert_equal(Diamond.make_alphabet('c'), ['a', 'b', 'c'])
  end
end
