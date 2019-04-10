require "scrable-solver"

describe "scrable_solver" do
  it "scores 0 with an empty string" do
    expect(scrable_solver('')).to eq 0
  end

  it "scores 0 with a tab and new line" do
    expect(scrable_solver("\t \n")).to eq 0
  end

  it "scores 0 with nil" do
    expect(scrable_solver(nil)).to eq 0
  end

  it "scores 1 with 'a'" do
    expect(scrable_solver("a")).to eq 1
  end

  it "scores 4 with 'f'" do
    expect(scrable_solver("f")).to eq 4
  end

  it "scores 6 with 'street'" do
    expect(scrable_solver("street")).to eq 6
  end

  it "scores 6 with 'quirky'" do
    expect(scrable_solver("quirky")).to eq 22
  end

  it "scores 41 with OXYPHENBUTAZONE" do
    expect(scrable_solver("OXYPHENBUTAZONE")).to eq 41
  end
end
