require_relative 'character_map'

class Converter
  attr_accessor :map, :braille_word, :english_word

  def initialize
    @map = CharacterMap.new
  end

  def to_english(braille_character)
    @map.character_map.invert[(braille_character)]
  end

  def to_braille(character)
    @map.character_map[(character)]
  end

  def to_braille_word(english_word)
    word = english_word.split("")
    @braille_word = word.map do |letter|
      to_braille(letter)
    end
  end

  def to_english_word(braille_word)
    word = braille_word
    @english_word = word.map do |letter|
      to_english(letter)
    end.join
  end

  def make_lines
    line_1 = []
    line_2 = []
    line_3 = []
    @braille_word.map do |char|
      line_1 << char[0]
      line_2 << char[1]
      line_3 << char[2]
    end
    string = line_1.join + ("\n") + line_2.join + ("\n") + line_3.join
  end

end

# c = Converter.new
#
#
#   require "pry"; binding.pry
#
#   1+1
