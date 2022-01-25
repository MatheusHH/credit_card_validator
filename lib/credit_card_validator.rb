require "credit_card_validator/version"

class ValidateCard
  
  def self.card_number_validate(card_number)
    card_number = card_number.to_s.split('')
    card_number.each_with_index.map do |value, index|
      card_number[index] = value.to_i #Change to integer
    end
    card_digit = card_number[-1] 
    card_number.pop() # Remove digit from calculation to start counting (index 1 instead 0)
    card_number = card_number.reverse()
    card_number.each_with_index.map do |value, index|
      if index.even?
        value = value * 2
        card_number[index] = value 
      end
      if value > 9
        value = value - 9
        card_number[index] = value 
      end
    end
    total = (card_number.sum()) + card_digit
    result = total.modulo(10)
    if result == 0
      return true
    end
    return false
  end

  def self.brand_name(number)
    CreditCardValidator::CreditCardBrandName.verify_card_brand(number)
  end
end

require 'credit_card_validator/credit_card_brand_name'



