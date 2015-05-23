require 'count_numbers'

describe '#number_count' do

  it "returns 1 occurence" do
    target = 3
    num_array = [3]

    result = number_count(target, num_array)

    expect(result).to eq(1)
  end
end
