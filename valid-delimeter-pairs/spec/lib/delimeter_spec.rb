require 'delimeter'

describe Delimeter do

  describe "#valid_pairs?" do
    delimeter = Delimeter.new
    
    it { delimeter.valid_pairs?("()").should be_true }
    it { delimeter.valid_pairs?("[]").should be_true }
    it { delimeter.valid_pairs?("{}").should be_true }
    it { delimeter.valid_pairs?("()()()").should be_true }
    it { delimeter.valid_pairs?("([])").should be_true }
    it { delimeter.valid_pairs?("(]").should be_false }
    it { delimeter.valid_pairs?("[[[[[[[[ [[").should be_false }
    it { delimeter.valid_pairs?(")").should be_false }
    it { delimeter.valid_pairs?("()[").should be_false }
    it { delimeter.valid_pairs?("{[()}]").should be_false }
    it { delimeter.valid_pairs?("()]").should be_false }
  end
end
