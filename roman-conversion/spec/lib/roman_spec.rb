require 'spec_helper'
require 'roman'

describe Roman do
	let(:roman) {Roman.new}
  describe "#convert" do
		it "converts I to 1" do
			roman.convert("I").should eq(1)
		end

		it "converts II to 2" do 
			roman.convert("II").should eq(2)
		end
    it "converts IV to 4" do 
			roman.convert("IV").should eq(4)
		end
    it "converts XI to 9" do 
			roman.convert("XI").should eq(11)
		end
	
    it "converts XIV to 14" do 
			roman.convert("XIV").should eq(14)
		end

		it "converts XLIX to 49" do 
			roman.convert("XLIX").should eq(49)
		end
		it "converts LXIX to 69" do
			roman.convert("LXIX").should eq(69)
		end
		it "converts DCCVII to 707" do
			roman.convert("DCCVII").should eq(707)
		end
		it "converts XXXVIII to 38" do 
			roman.convert("XXXVIII").should eq(38)
		end
	end

end
