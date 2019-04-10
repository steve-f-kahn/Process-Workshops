class Shop
  ITEMS = {"A" => 50, "B" => 30, "C" => 20, "D" => 15}
  DEALS = {"AAA" => -20}
  def checkout(basket)
    price = 0
    return -1 unless basket.is_a? String
    basket.split('').each do |letter|
      ITEMS.each_pair do |item, value|
        if item == letter
          price += value
        end
      return -1 unless ITEMS.include?(letter)
      end
    end
    loop do
     if basket.include?("AAA")
       price -= 20
       p basket.sub!("AAA", "xxx")
     end
     break unless basket.include?("AAA")
    end
    price
  end

end
