RSpec.describe CreditCardValidator do

  context 'Validate Version' do  
    it "has a version number" do
      expect(CreditCardValidator::VERSION).not_to be nil
    end
  end

  context 'Validate Card Number' do  
    it "Return false to invalid card number" do
      expect(ValidateCard.card_number_validate(rand(199999999999..9999999999999999))).to eq(false)
    end

    it "Return true to valid card number" do
      expect(ValidateCard.card_number_validate(5174431783463066)).to eq(true)
    end
  end

  context 'Return Correct Card Brand Name' do
    
    it "Return MasterCard according to card number" do
      master_card_list = ['5516449148168391', '5457510804702277', '5150385342207513', '5434530353935860', '5464548375203524'] 
      expect(ValidateCard.brand_name(master_card_list.sample)).to eq(:master_card)
    end

    it "Return Visa according to card number" do
      visa_list = ['4929185337227895', '4916611443634976', '4556284751177916', '4266097450738171', '4716078538839062'] 
      expect(ValidateCard.brand_name(visa_list.sample)).to eq(:visa)
    end

    it "Return American Express according to card number" do
      american_express_list = ['349701458632281', '343888685456604', '378968883797070', '344575573347172', '378575629799805'] 
      expect(ValidateCard.brand_name(american_express_list.sample)).to eq(:american_express)
    end

    it "Return Discover according to card number" do
      discover_list = ['6011537428326099', '6011684375390502', '6011481924701572', '6011516382795028', '6011808611968975'] 
      expect(ValidateCard.brand_name(discover_list.sample)).to eq(:discover)
    end

    it "Return Diners Club according to card number" do
      diners_club_list = ['30235121029306', '30346620814021', '30266799789863', '30196918301102', '36641707059589'] 
      expect(ValidateCard.brand_name(diners_club_list.sample)).to eq(:diners_club)
    end

    it "Return JCB according to card number" do
      jcb_list = ['3518755171058710', '3553134636921407', '3557790896383319', '3546744492050057', '3558558885894961'] 
      expect(ValidateCard.brand_name(jcb_list.sample)).to eq(:jcb)
    end

  end
end
