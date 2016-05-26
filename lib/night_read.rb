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

class NightRead
  attr_reader :reader, :converter, :english_string

  def initialize
    @reader = FileReader.new
    @converter = Converter.new
  end

  def decode_file_to_english
    braille = reader.read
    plain = decode_to_english(braille)
    reader.write(plain)
  end

  def decode_to_english(input)
    split_arrays = input.split("\n").map do |letter|
      letter.scan(/../)
    end

    row1 = split_arrays[0]
    row2 = split_arrays[1]
    row3 = split_arrays[2]

    correct_format = row1.zip(row2, row3)
    @english_string = correct_format.map do |pair|
      converter.map.english[pair]
    end.join
  end
end

n = NightRead.new
n.decode_file_to_english

puts "Created '#{ARGV[1]}' containing #{File.read(ARGV[1]).chomp.length} characters"

puts ARGV.inspect
