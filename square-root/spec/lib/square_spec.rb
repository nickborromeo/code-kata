require "square"

describe SquareRoot do
  class TestClass
  end

  let(:number) { 123.32 }
  
  before(:all) do
    @test = TestClass.new
    @test.extend SquareRoot
  end

  describe ".format_number" do
    it { should respond_to(:format_number).with(1).argument }
    it { SquareRoot.format_number(3).should eq("3.0000") }
  end
  describe ".pair_numbers" do
    num_arr = SquareRoot.format_number(123.32).split('')
    it { should respond_to(:pair_numbers).with(1).argument }
    it { SquareRoot.pair_numbers(num_arr).should eq(%w{00 32 . 23 1})}
    it { SquareRoot.pair_numbers(num_arr).should be_an(Array) }
  end
end
