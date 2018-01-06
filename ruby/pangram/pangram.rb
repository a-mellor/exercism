class Pangram
  ALPHABET = ('a'..'z').freeze
  ALPHABET_LENGTH = ALPHABET.to_a.length

  def self.pangram?(sentence)
    uniq_chars(sentence).count { |x| ALPHABET.include?(x) } == ALPHABET_LENGTH
  end

  private 

  def self.uniq_chars(sentence)
    sentence.downcase.chars.uniq
  end
end

module BookKeeping
  VERSION = 6
end
