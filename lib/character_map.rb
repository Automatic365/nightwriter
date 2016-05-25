class CharacterMap
  attr_accessor :character_map

  def initialize
    @character_map = Hash.new
    @character_map.merge!(lower)
    @character_map.merge!(nums)
    @character_map.merge!(space)
    @character_map.merge!(caps)
    @character_map.merge!(pound)
  end

    def lower
      lower = {
      "a" => ["0.", "..", ".."],
      "b" => ["0.", "0.", ".."],
      "c" => ["00", "..", ".."],
      "d" => ["00", ".0", ".."],
      "e" => ["0.", ".0", ".."],
      "f" => ["00", "0.", ".."],
      "g" => ["00", "00", ".."],
      "h" => ["0.", "00", ".."],
      "i" => [".0", "0.", ".."],
      "j" => [".0", "00", ".."],
      "k" => ["0.", "..", "0."],
      "l" => ["0.", "0.", "0."],
      "m" => ["00", "..", "0."],
      "n" => ["00", ".0", "0."],
      "o" => ["0.", ".0", "0."],
      "p" => ["00", "0.", "0."],
      "q" => ["00", "00", "0."],
      "r" => ["0.", "00", "0."],
      "s" => [".0", "0.", "0."],
      "t" => [".0", "00", "0."],
      "u" => ["0.", "..", "00"],
      "v" => ["0.", "0.", "00"],
      "w" => [".0", "00", ".0"],
      "x" => ["00", "..", "00"],
      "y" => ["00", ".0", "00"],
      "z" => ["0.", ".0", "00"]

    }
  end

    def nums

      nums = {

      "1" => ["0.", "..", ".."],
      "2" => ["0.", "0.", ".."],
      "3" => ["00", "..", ".."],
      "4" => ["00", ".0", ".."],
      "5" => ["0.", ".0", ".."],
      "6" => ["00", "0.", ".."],
      "7" => ["00", "00", ".."],
      "8" => ["0.", "00", ".."],
      "9" => [".0", "0.", ".."],
      "0" => [".0", "00", ".."],
    }
  end

    def space
      space = {" " => ["..", "..", ".."]}
    end

    def caps
      caps =  {"*" => [".",".",".",".",".","0"]}
    end

    def pound
      pound = {"#" => [".","0",".","0","0","0"]}
    end


    # @english = {
    #   ["0.", "..", ".."] => "a",
    #   ["0.", "0.", ".."] => "b",
    #   ["00", "..", ".."] => "c",
    #   ["00", ".0", ".."] => "d",
    #   ["0.", ".0", ".."] => "e",
    #   ["00", "0.", ".."] => "f",
    #   ["00", "00", ".."] => "g",
    #   ["0.", "00", ".."] => "h",
    #   [".0", "0.", ".."] => "i",
    #   [".0", "00", ".."] => "j",
    #   ["0.", "..", "0."] => "k",
    #   ["0.", "0.", "0."] => "l",
    #   ["00", "..", "0."] => "m",
    #   ["00", ".0", "0."] => "n",
    #   ["0.", ".0", "0."] => "o",
    #   ["00", "0.", "0."] => "p",
    #   ["00", "00", "0."] => "q",
    #   ["0.", "00", "0."] => "r",
    #   [".0", "0.", "0."] => "s",
    #   [".0", "00", "0."] => "t",
    #   ["0.", "..", "00"] => "u",
    #   ["0.", "0.", "00"] => "v",
    #   [".0", "00", ".0"] => "w",
    #   ["00", "..", "00"] => "x",
    #   ["00", ".0", "00"] => "y",
    #   ["0.", ".0", "00"] => "z",
    #   # ["0.", "..", ".."] => "1",
    #   # ["0.", "0.", ".."] => "2",
    #   # ["00", "..", ".."] => "3",
    #   # ["00", ".0", ".."] => "4",
    #   # ["0.", ".0", ".."] => "5",
    #   # ["00", "0.", ".."] => "6",
    #   # ["00", "00", ".."] => "7",
    #   # ["0.", "00", ".."] => "8",
    #   # [".0", "0.", ".."] => "9",
    #   # [".0", "00", ".."] => "0",
    #   ["..", "..", ".."] => " "
    # }

end
