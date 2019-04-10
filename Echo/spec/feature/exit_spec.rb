require "echo"

describe "Can exit from the app" do
  it "Types exit and sees goodbye" do
    allow(STDIN).to receive(:gets).and_return("exit")
    expect{ Echo.new }.to output(/ Goodbye! /).to_stdout
  end
end
