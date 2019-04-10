class Scrabble
  CHAR = { 1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
           2 => ["D", "G"],
           3 => ["B", "C", "M", "P"],
           4 => ["F", "H", "V", "W", "Y"],
           5 => ["K"],
           8 => ["J", "X"],
           10 => ["Q", "Z"]
  }
  def initialize(string)
    @string = string
  end

  def solve
    score = 0
    unless @string.nil?
      @string.each_char do |letter|
      CHAR.each_pair { |value, char| score += value if char.include? letter.upcase }
      end
    end
    score 
  end
end
