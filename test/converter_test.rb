require_relative 'testhelper'
require './lib/converter'

class ConverterTest < Minitest::Test
  def test_brailleharacterMap_braillelass_exists
    c = Converter.new
    assert_equal Converter, c.class
  end

  def test_returns_nil_if_no_letter_entered
    c = Converter.new
    assert_equal nil, c.to_braille("")
  end

  def test_returns_correct_letter_of_braille
    c = Converter.new
    assert_equal ["0.", "..", ".."], c.to_braille("a")
  end

  def test_numbers_can_be_braille_too

    c = Converter.new
    assert_equal [".0", "0.", ".."], c.to_braille("9")
  end

  def test_space_is_braille
    c = Converter.new
    assert_equal ["..", "..", ".."], c.to_braille(" ")
  end

  def test_can_braille_two_letter_word
    c = Converter.new
    assert_equal [["00", "00", ".."], ["0.", ".0", "0."]], c.to_braille_word("go")
  end

  def test_can_braille_a_phrase
    c = Converter.new
    assert_equal [[".0", "0.", ".."], ["..", "..", ".."], ["0.", "..", ".."], ["00", "..", "0."]], c.to_braille_word("i am")
  end

  def test_can_make_lines_with_one_letter
    c = Converter.new
    c.to_braille_word("a")
    assert_equal "0.\n..\n..", c.make_lines
  end

  def test_can_make_lines_with_two_letters
    c = Converter.new
    word = c.to_braille_word("at")
    assert_equal "0..0\n..00\n..0.", c.make_lines
  end

  def test_can_output_single_braille_to_english
    english = Converter.new
    assert_equal "n", english.to_english(["00", ".0", "0."])
  end

end
