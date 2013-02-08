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
			duplicate_detector = DuplicateDetector.new
			duplicate_detector.instance_variable_set(:@num_arr, [1,3,3,6,7])
			duplicate_detector.detect_duplicates.should eq(3)
    end
  end
end
