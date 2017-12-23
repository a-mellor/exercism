class Pangram
  ALPHABET = ('a'..'z').freeze

  def self.pangram?(sentence)
    array_of_unique_chars(sentence).count { |x| ALPHABET.include?(x) } == 26
  end

  def self.array_of_unique_chars(sentence)
    sentence.downcase.chars.uniq
  end
end

module BookKeeping
  VERSION = 6
end
