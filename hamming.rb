class Hamming

  def self.compute(strand1, strand2)
    raise ArgumentError unless strand1.length == strand2.length
    char_array = strand1.split("").zip(strand2.split(""))
    hamming_distance = 0

    char_array.map { |chars| hamming_distance += 1 unless chars[0] == chars[1] }
    hamming_distance
  end
end
