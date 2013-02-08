class WeekendCalculator
  attr_accessor :start_date, :end_date

  def initialize(start_date, end_date)
    @start_date = start_date
    @end_date = end_date
  end

  def count_weekends
    return 0 if start_date > end_date
    total = 0
    total += 1 if start_date_is_a_weekend?
    total += 1 if end_date_is_a_weekend?
    (start_date+1).upto(end_date-1).each { |day| total += 1 if day.saturday? }
    total
  end

  private

  def start_date_is_a_weekend? 
    start_date.saturday? || start_date.sunday?
  end

  def end_date_is_a_weekend?
    end_date.saturday? || end_date.sunday?
  end

end
