RSpec.describe CreditCardValidator do
  it "has a version number" do
    expect(CreditCardValidator::VERSION).not_to be nil
  end

  it "return false to invalid card number" do
    expect(ValidateCard.card_number_validate(rand(999999999999..9999999999999999))).to eq(false)
  end

  it "return true to valid card number" do
    expect(ValidateCard.card_number_validate(5174431783463066)).to eq(true)
  end
end
