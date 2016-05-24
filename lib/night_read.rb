require "./lib/character_map"
require "./lib/converter"

class Nightreader
  attr_accessor :key, :reader, :braille_conversion, :english_conversion

    def initialize
      @key = Converter.new
    end

    def read
      file = ARGV[0]
      @reader = File.read(file).chomp
    end

    def convert_to_braille
      @braille_conversion = key.to_braille_word(reader)
    end




end

n = Nightreader.new
n.read


  require "pry"; binding.pry

  1+1
