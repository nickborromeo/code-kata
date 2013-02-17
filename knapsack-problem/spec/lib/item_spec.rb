require 'item'

describe Item do
  subject { Item.new("item", 3, 2) }
  it { should respond_to(:name) } 
  it { should respond_to(:weight) }
  it { should respond_to(:value) }
end

