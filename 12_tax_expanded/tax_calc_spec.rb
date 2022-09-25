require "bigdecimal"
require_relative "tax_calc"
require_relative "order"

RSpec.describe "TaxCalc" do
  subject { TaxCalc.new(order, tax_rate) }
  let(:order) { Order.new(line_item_amount: 12.68) }
  let(:tax_rate) { BigDecimal.new(0.07) }

  describe "initializer checks" do
    it "requires both the order and tax_rate params be present" do
      expect { TaxCalc.new }.to raise_error(ArgumentError)
      expect { TaxCalc.new(nil, tax_rate) }.to raise_error(ArgumentError)
      expect { TaxCalc.new(order, nil) }.to raise_error(ArgumentError)
      expect { TaxCalc.new(nil, nil) }.to raise_error(ArgumentError)
    end

    it "ensures the order is an order" do
      expect(TaxCalc.new(double, tax_rate))
        .to raise_error(ArgumentError, "order argument is not an instance of Order")
    end

    it "ensures the tax_rate is a Big Decimal" do
      expect(TaxCalc.new(order, "wow I protest taxes how dare you"))
        .to raise_error(ArgumentError, "tax_rate must be a Big Decimal")
    end

    it "converts float tax_rates into Big Decimals" do
      rate = TaxCalc.new(order, 12.56).instance_variable_get(:@tax_rate)
      expect(rate).to be_a(BigDecimal)
      expect(rate.to_s).to eql("12.56")
    end
  end

  describe "#tax_amount" do
    it "returns the calculated tax amount for the order based on the tax_rate rounded to two decimals" do
      expect(subject.tax_amount).to eql(BigDecimal(0.89))
    end
  end

  describe "#total_with_tax" do
    it "returns the calculated total of the order with the tax" do
      expect(subject.total_with_tax).to eql(BigDecimal(13.57))
    end
  end
end
