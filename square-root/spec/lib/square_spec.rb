require "spec_helper"
require "square"

describe SquareRoot do
  class TestClass
  end

  let(:number) {123.32}

  before(:each) do
    @test = TestClass.new
    @test.extend SquareRoot
  end

  # Already tested the private methods
  #
  # describe "#format_number" do
  #   it { @test.format_number,3).should eq("3.0000") }
  # end
  # describe "#pair_numbers" do
  #   num_arr = @test.format_number(123.32).split('')
  #   it { @test.pair_numbers(num_arr).should eq(%w{00 32 . 23 1}) }
  #   it { @test.pair_numbers(num_arr).should be_an(Array) }
  # end

  describe "#sqrt" do
    it { @test.sqrt(number).should be_a(Float)}
  end
end
