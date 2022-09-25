require_relative "item"

RSpec.describe "Lesson 11 - Multiple Classes" do
  describe "Item" do
    subject(:item) { Item.new(name: "Apples", quantity: 2, unit_price: 2.40) }

    describe "#total_price" do
      it "multiplies the quantity by unit price" do
        expect(item.total_price).to eql(4.80)
      end
    end
  end
end
