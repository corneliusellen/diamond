require 'pry'

class Diamond
  def self.make_alphabet(letter)
    ('a'.."#{letter}").to_a
  end

  def self.make_half(letter)
    alphabet = make_alphabet(letter)
    max_spaces = alphabet.count
    alphabet.map.with_index do |letter, i|
      if i == 0
        " " * (max_spaces - i) + letter + "\n"
      else
        " " * (max_spaces - i) + letter + " " * (i + i-1) + letter + "\n"
      end
    end
  end

  def self.make_diamond(letter)
    top_half = make_half(letter)
    bottom_half = make_half(letter).reverse
    top_half.shift(top_half.length - 1) + bottom_half
  end
end
