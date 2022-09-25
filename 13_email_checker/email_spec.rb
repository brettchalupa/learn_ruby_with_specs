require_relative "email"

# NOTE: while `URI` in Ruby has a constant you can use, this lesson wants you
# to write the regex yourself. https://rubular.com is a helpful tool.
RSpec.describe "Lesson 13 - Email Checker with Regexes" do
  describe "Email" do
    describe ".valid?" do
      it "returns true when the email is properly formatted" do
        expect(Email.valid?("dale@fbi.gov")).to be(true)
        expect(Email.valid?("hi@example.gov")).to be(true)
        expect(Email.valid?("sarah123@sub.example.gov")).to be(true)
        expect(Email.valid?("grossman$@example.com")).to be(true)
      end

      it "returns false when the email is not properly formatted" do
        expect(Email.valid?("hi!example.com")).to be(false)
        expect(Email.valid?("jorgon@bikes@example.com")).to be(false)
        expect(Email.valid?("@example.com")).to be(false)
      end

      it "returns false when the email is not a string" do
        expect(Email.valid?(nil)).to be(false)
        expect(Email.valid?(123)).to be(false)
        expect(Email.valid?(Object.new)).to be(false)
      end
    end
  end
end
