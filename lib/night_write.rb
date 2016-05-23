require_relative 'character_map'

class FileReader
attr_accessor :reader, :keys, :message

  def initialize
    @keys = CharacterMap.new
  end

  def read
    file = ARGV[0]
    @reader = File.read(file)
  end

  def output_to_braille
    keys.output_braille_word(reader)
    @message = keys.get_lines
    writing
  end

  def writing
    output = File.open(ARGV[1], 'w')
    output.write(message)
  end

end

  require "pry"; binding.pry

  1+1
