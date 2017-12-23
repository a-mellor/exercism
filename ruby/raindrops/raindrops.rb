class Raindrops
  NOISES = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }
  
  def self.convert(drops)
    output = ''

    NOISES.each do |number, noise|
      output << noise if drops % number == 0
    end
    
    output.empty? ? drops.to_s : output
  end
end

module BookKeeping
  VERSION = 3
end
