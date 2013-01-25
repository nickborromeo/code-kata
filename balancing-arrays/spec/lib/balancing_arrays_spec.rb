require 'spec_helper'
require 'balance_array'

describe BalanceArray do
  let(:balance_array) {BalanceArray.new}
  
  describe "#balance_index" do  
    it "cannot process an empty array" do
      balance_array.balance_index([]).should eq("Cannot process empty array")
    end
    
    it "returns -1 when array not balanced" do
      balance_array.balance_index([1,2,3,4]).should eq(-1)
    end
    
    it "returns index of the balanced array" do
      balance_array.balance_index([1,2,3,4,5,1,2,3,4,5]).should eq(4)
    end
  end
  
  describe ".sum_left" do
    it "returns correct sum" do
      balance_array.send(:sum_left, [1,2,3,4], 1).should eq(3)
    end
  end
  
  describe ".sum_right" do
    it "returns correct sum" do
      balance_array.send(:sum_right, [1,1,1,1], 1).should eq(2)
    end
  end
end