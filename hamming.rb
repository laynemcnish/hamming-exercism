class Hamming

  def self.compute(strand1, strand2)
    raise ArgumentError unless strand1.length.eql? strand2.length
    char_array = strand1.split("").zip(strand2.split(""))
    hamming_distance = 0

    char_array.map { |chars| hamming_distance += 1 unless chars[0].eql? chars[1] }
    hamming_distance
  end
end
