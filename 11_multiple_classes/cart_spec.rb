require_relative "cart"
require_relative "item"

RSpec.describe "Lesson 11 - Multiple Classes" do
  describe "Cart" do
    describe "#total" do
      it "adds the passed in item to the items array" do
        cart = Cart.new

        expect(cart.total).to eql(0.0)

        apples = Item.new(name: "Apples", quantity: 2, unit_price: 2.40)
        sweet_poatoes = Item.new(name: "Sweet Potatoes", quantity: 1, unit_price: 1.49)

        cart.add_item(apples)
        cart.add_item(sweet_poatoes)

        expect(cart.total).to eql(6.29)
      end
    end
  end
end
