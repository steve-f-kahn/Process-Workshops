require 'scrabble'

describe Scrabble do
  context "Solves invalid strings" do

    it "Returns 0 for an empty string" do
      scrabble = Scrabble.new('')
      expect(scrabble.solve).to eq 0
    end

    it "Returns 0 for a string with escape characters" do
      scrabble = Scrabble.new(" \t\n")
      expect(scrabble.solve).to eq 0
    end

    it "Returns 0 for nil" do
      scrabble = Scrabble.new(nil)
      expect(scrabble.solve).to eq 0
    end
  end

  context "Solves valid strings" do
    it "Returns 1 for a" do
      scrabble = Scrabble.new("a")
      expect(scrabble.solve).to eq 1
    end

    it "Returns 4 for f" do
      scrabble = Scrabble.new('f')
      expect(scrabble.solve).to eq 4
    end

    it "Returns 6 for street" do
      scrabble = Scrabble.new('street')
      expect(scrabble.solve).to eq 6
    end

    it "Returns 22 for quirky" do
      scrabble = Scrabble.new('quirky')
      expect(scrabble.solve).to eq 22
    end

    it "Returns 41 for OXYPHENBUTAZONE" do
      scrabble = Scrabble.new('OXYPHENBUTAZONE')
      expect(scrabble.solve).to eq 41
    end

  end
end
