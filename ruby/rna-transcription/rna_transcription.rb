class Complement
  COMPLIMENTS = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }.freeze

  def self.of_dna(strand)
    strand.chars.map do |nucleotide| 
      COMPLIMENTS.fetch(nucleotide)
    end.join
    
  rescue KeyError
    ''
  end
end

module BookKeeping
  VERSION = 4
end

