require 'investment'

describe Investment do
  let(:good_investment) {Investment.new(1000,1)}
  let(:bad_investment) {Investment.new(-1000,-1)}

  describe ".initialize" do
    it "amount should not be nil" do
      good_investment.instance_variable_get(:@amount).should_not be_nil
    end
    it "daily increase should not be nil" do
      good_investment.instance_variable_get(:@daily_interest).should_not be_nil
    end
    it "does not accept negative amounts" do
      expect(bad_investment.instance_variable_get(:@amount)).to raise_error
    end
    it "cannot have a negative daily interest" do
      expect(bad_investment.instance_variable_get(:@daily_interest)).to raise_error
    end
  end

  describe "#predictor" do
    it "return valid days" do
      good_investment.predictor.should be >= 0
    end
    it "returns number of days to double investment" do
      good_investment.predictor.should eq(100)
    end
  end
end
