require 'echo'

describe "Echo asks for info and outputs it with time" do
  it "outputs the date, time and message, it then exits" do
    date = Time.now.strftime("%Y-%m-%d")
    time = Time.now.strftime("%H:%M")
    message = "This is my message!"
    question = "Say something:"
    allow(STDIN).to receive(:gets).and_return(message, "exit", message, "exit", message, "exit", message, "exit")
    expect{ Echo.new }.to output(/#{question}/).to_stdout
    expect{ Echo.new }.to output(/ #{date} /).to_stdout
    expect{ Echo.new }.to output(/#{time}/).to_stdout
    expect{ Echo.new }.to output(/#{message}/).to_stdout
  end

  it "Asks a second message and exits" do

    message1 = "This is my message!"
    message2 = "This is the second message!"

    allow(STDIN).to receive(:gets).and_return(message1, message2, "exit")
    expect{ Echo.new }.to output(/#{message2}/).to_stdout
  end
end
