require 'minitest/autorun'
require_relative 'diamond'

class DiamondTest < Minitest::Test

  def test_it_makes_an_array_of_the_alphabet_given_a_letter
    assert_equal(Diamond.make_alphabet('c'), ['a', 'b', 'c'])
  end

  def test_it_prints_diamond
    diamond = Diamond.make_diamond('e')

    assert_equal(diamond, ["     a\n", "    b b\n", "   c   c\n", "  d     d\n", " e       e\n", "  d     d\n", "   c   c\n", "    b b\n", "     a\n"])
  end
end
