require 'spec_helper'
require 'weekend'

describe WeekendCalculator do 
	let(:start_date) {Date.new(2011,11,6) }
	let(:end_date) {Date.new(2011,12,31) }
	let(:weekend) { WeekendCalculator.new(start_date, end_date) }
	describe "#count_weekends" do 
		it "returns 0 for invalid date range" do
      wk = WeekendCalculator.new(end_date, start_date)
		  wk.count_weekends.should eq(0)
		end
		it "returns correct number of weekends" do
			weekend.count_weekends.should eq(9)
		end
	end
end
