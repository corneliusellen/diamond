require 'pry'

class Diamond
  def self.make_alphabet(letter)
    ('a'.."#{letter}").to_a
  end

  def self.make_half(letter)
    alphabet = make_alphabet(letter)
    max_spaces = alphabet.count
    alphabet.map.with_index do |char, i|
      if i == 0
        " " * max_spaces + char + "\n"
      else
        " " * (max_spaces - i) + char + " " * (i + i-1) + char + "\n"
      end
    end
  end

  def self.make_diamond(letter)
    top_half = make_half(letter)
    bottom_half = make_half(letter).reverse
    top_half.shift(top_half.length - 1) + bottom_half
  end

  def self.print_diamond(letter)
    make_diamond(letter).join
  end
end
