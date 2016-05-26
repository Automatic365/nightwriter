require_relative 'converter'

class FileReader
  def read
    filename = ARGV[0]
    File.read(filename).chomp
  end

  def write(text)
    filename = ARGV[1]
    File.write(filename, text)
  end

end

class NightWrite
  attr_reader :reader, :converter, :braille

  def initialize
    @reader = FileReader.new
    @converter = Converter.new
  end

  def encode_file_to_braille
    plain = reader.read
    braille = encode_to_braille(plain)
    reader.write(braille)
  end

  def encode_to_braille(input)
    converter.to_braille_word(input)
    @braille = converter.make_lines
  end


end

n = NightWrite.new
n.encode_file_to_braille

puts "Created '#{ARGV[1]}' containing #{File.read(ARGV[0]).chomp.length} characters"




puts ARGV.inspect
