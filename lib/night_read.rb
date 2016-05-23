require_relative 'character_map'

class FileReader
  attr_accessor :keys, :reader

  def initialize
    @keys = CharacterMap.new
  end

  def read
    file = ARGV[0]
    @reader = File.read(file)
  end

  def braille_to_english
    split_message = @reader.split
    each_character = split_message.map do |char|
      char.split("")
    end
  end


end

  require "pry"; binding.pry

1+1
