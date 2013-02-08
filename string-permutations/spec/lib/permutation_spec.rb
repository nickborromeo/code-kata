require 'permutation'

describe String do 
 describe "#permutations" do
   let(:my_string) { "find" }
   it "returns nil with empty string" do
     "".permutations.should eq(nil) 
   end
   it "splits string to an array" do
     my_string.permutations.class.should eq(Array)
   end
   it "returns a correct number of permutations" do
     my_string.permutations.count.should eq(24)
   end
   context "when sorted alphabetically" do
     it "correct permutation at the start" do
       my_string.permutations[0].should eq("dfin")
     end
     it "correct permutation is at the end" do
       my_string.permutations[-1].should eq("nifd")
     end
   end
 
 end
end
