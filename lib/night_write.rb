require_relative 'converter'

class FileReader
  def read
    filename = ARGV[0]
    File.read(filename)
  end
end

class NightWriter
  attr_reader :reader, :converter

  def initialize
    @reader = FileReader.new
    @converter = Converter.new
  end

  def encode_file_to_braille
    # I wouldn't worry about testing this method
    # unless you get everything else done
    plain = reader.read
    braille = encode_to_braille(plain)
  end

  def encode_to_braille(input)
    translation = converter.to_braille(input.chomp)
    3.times { |i| p translation }
    output_file = ARGV[1]
    input_char_count = input.chomp.size
    puts "Created '#{output_file}' containing #{input_char_count} character(s)"
    # you've taken in an INPUT string
    # do the magic
    # send out an OUTPUT string
  end
end


f = FileReader.new
n = NightWriter.new
# output_file = ARGV[1]
# input_char_count = reader.size
p n.encode_file_to_braille


    1+1
