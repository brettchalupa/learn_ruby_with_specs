require_relative "cart"

RSpec.describe "Lesson 10 - Working with Arrays" do
  describe "Cart" do
    describe "#total" do
      it "adds the passed in item to the items array" do
        # NOTE: the `L10` represents a module this Cart definition needs to
        # exist in so it doesn't conflict with other definitions of `Cart`.
        cart = L10::Cart.new

        expect(cart.total).to eql(0.0)

        cart.add_item({ name: "Apples", quantity: 2, unit_price: 2.40 })
        cart.add_item({ name: "Sweet Potatoes", quantity: 1, unit_price: 1.49 })

        expect(cart.total).to eql(6.29)
      end
    end
  end
end
