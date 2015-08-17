class Hamming

  def self.compute(strand1, strand2)
    raise ArgumentError unless strand1.length.eql? strand2.length
    char_array = strand1.split("").zip(strand2.split(""))
    char_array.reject! {|chars| chars[0].eql? chars[1] }
    char_array.length
  end
end
