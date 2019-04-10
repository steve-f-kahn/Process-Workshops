require 'shop'

describe Shop do
  before(:each) do
    @shop = Shop.new
  end
  context "checkout" do
    context "Returns -1 when given the invalid input:" do
      it "aBc" do
        expect(@shop.checkout('aBc')).to eq -1
      end

      it "'-B8x'" do
        expect(@shop.checkout('-B8x')).to eq -1
      end

      it "18" do
        expect(@shop.checkout(18)).to eq -1
      end
    end
    context "Returns the price when given a valid basket" do
      it "returns 100 when given AA" do
        expect(@shop.checkout("AA")).to eq 100
      end

      it "returns 115 when given ABCD" do
        expect(@shop.checkout("ABCD")).to eq 115
      end

      it "returns 130 when given AAA" do
        expect(@shop.checkout("AAA")).to eq 130
      end

      it "returns 260 when given AAAAAA" do
        expect(@shop.checkout("AAAAAA")).to eq 260
      end
    end
  end
end
