require 'duplicate'

describe DuplicateDetector do 
  let(:dup_array) { DuplicateDetector.new }
  let(:max) {1000}

  describe "#initialize" do 
    it "randomizes the array" do
      random_array = DuplicateDetector.new
      expect(dup_array.num_arr).not_to eq(random_array.num_arr)
    end
  end
  describe "#detect_duplicates" do 
    it "should be within the MAX range" do
      expect(dup_array.detect_duplicates).to satisfy { |v| v >= 1 && v <= max }
    end
    it "returns correct duplicate" do 
      stub_arr = DuplicateDetector.stub(:new).and_return([1,333,333,4,5,7,1000])
      expect(stub_arr.detect_duplicates).to eq(333)
      #TODO: Fix example to test method correctly
    end
  end
end
