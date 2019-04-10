class Echo
  def initialize
    time = Time.now
    while message() != "exit" do
      puts " #{time.strftime("%Y-%m-%d")} || #{time.strftime("%H:%M")} || #{@message}"
    end
    puts " Goodbye! "
  end

  private
  def message()
    puts "Say something:"
    @message = STDIN.gets.chomp
  end

end
