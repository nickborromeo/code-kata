require 'knapsack'

describe Knapsack do
  let(:items) { [Item.new("laptop", 2, 3), Item.new("gold",1,5)] }
  let(:limit) { 2 }

  subject { Knapsack.new(items) }
  it { should respond_to(:items) }
  it { subject.max_value(1,2).should eq(5) }

  describe "#max_value" do
    context "when index 0" do
      it { subject.max_value(0,2).should eq(3) }
      it { subject.max_value(0,1).should eq(0) }
    end
  end
end
