module CreditCardValidator
  class CreditCardBrandName
    CARD_BRANDS = {
      master_card: /^5[1-5][0-9]{14}$|^2(?:2(?:2[1-9]|[3-9][0-9])|[3-6][0-9][0-9]|7(?:[01][0-9]|20))[0-9]{12}$/,
      american_express: /^3[47][0-9]{13}$/,
      visa: /^4[0-9]{12}(?:[0-9]{3})?$/,
      discover: /^65[4-9][0-9]{13}|64[4-9][0-9]{13}|6011[0-9]{12}|(622(?:12[6-9]|1[3-9][0-9]|[2-8][0-9][0-9]|9[01][0-9]|92[0-5])[0-9]{10})$/,
      diners_club: /^3(?:0[0-5]|[68][0-9])[0-9]{11}$/,
      jcb: /^(?:2131|1800|35[0-9]{3})[0-9]{11}$/
    }

    def self.verify_card_brand(number)
      raise "Invalid Card Number" unless ValidateCard.card_number_validate(number)
      CARD_BRANDS.each do |key, value|
        pattern = Regexp.new(value)
        if pattern.match?(number.to_s)
          return key
          #.to_s.tr("_"," ").capitalize
        end
      end
    end
  end
end

