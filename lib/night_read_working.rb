require_relative 'converter'

class FileReader
  def read
    filename = ARGV[0]
    File.read(filename)
  end

  def write(text)
    filename = ARGV[1]
    File.write(filename, text)
  end
end

class NightWrite
  attr_reader :reader, :converter

  def initialize
    @reader = FileReader.new
    @converter = Converter.new
  end

  def decode_file_to_english
    braille = reader.read
    plain = decode_to_english(braille)
  end

  def decode_to_english(input)
    english = reader.write(converter.to_english(input))
  end
end

n = NightWrite.new
n.decode_file_to_english


puts "Created '#{ARGV[1]}' containing #{n.reader.read.size} characters"




puts ARGV.inspect
