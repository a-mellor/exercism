class Complement
  def self.of_dna(strand)
    rna_complement = ''
    strand.each_char { |nucleotide| rna_complement << dna_to_rna_replacement(nucleotide) }

    if rna_complement.length == strand.length
      rna_complement
    else
      ''
    end
  end
  
  def self.dna_to_rna_replacement(nucleotide)
    case nucleotide
    when 'C'
      'G'
    when 'G'
      'C'
    when 'T'
      'A'
    when 'A'
      'U'
    else ''
    end
  end
end

module BookKeeping
  VERSION = 4
end
