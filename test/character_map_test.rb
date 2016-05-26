require './test/testhelper'
require './lib/character_map'


class CharacterMapTest < Minitest::Test

  def test_charactermap_instance
    c = CharacterMap.new
    assert_instance_of CharacterMap, c
  end

  def test_can_get_letters_from_braille
    c = CharacterMap.new
    assert_equal ["0.","..",".."], c.character_map['a']
  end

  def test_can_get_braille_from_letters_and_numbers
    c = CharacterMap.new
    assert_equal 'z', c.english[["0.", ".0", "00"]]
  end
end
