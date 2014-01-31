require 'spec_helper'

describe Product do
  fixtures :products

  it { should validate_presence_of(:name) }
  it { should validate_numericality_of(:price) }
  it { should validate_numericality_of(:stock) }

  let(:towel) { products(:product_towel) }
  let(:iphone) { products(:product_iphone) }

  describe "Product#with_stock" do 
    it "should have iphone" do 
      Product.with_stock.should include iphone
    end

    it "should not have towel" do 
      Product.with_stock.should_not include towel
    end
  end

  describe "Product#expensive" do 
    it "should have iphone" do 
      Product.expensive.should include iphone
    end

    it "should not have towel" do 
      Product.expensive.should_not include towel
    end
  end
end
