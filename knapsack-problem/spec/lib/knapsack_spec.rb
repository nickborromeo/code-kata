require 'knapsack'

describe Knapsack do
  let(:items) { [Item.new("laptop", 2, 3), Item.new("gold",1,5)] }
  subject { Knapsack.new(items, 2) }
  it { should respond_to(:items) }
  it { should respond_to(:limit) }

  describe "#pack" do
    context "when index 0" do
      it "should return item if weight < aw" do
        # subject.should_receive(:pack).with(items,0).and_return(0)
        subject.pack(items, 0).should be_an(Item)
      end
      it "should return nil if weight > aw" do
        knapsack = Knapsack.new(items,1)
        knapsack.pack(items,0).should be_nil
      end
    end
  end
end
