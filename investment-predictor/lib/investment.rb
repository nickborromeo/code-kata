class Investment 
  attr_accessor :amount, :daily_interest

  def initialize(amount=0,daily_interest=1)
    @amount = amount
    @daily_interest = daily_interest
  end

  def predictor
    days = 0
    double  = amount * 2
    daily_increase = calculate_daily_increase
    while amount != double
      days += 1
      @amount += daily_increase
    end
    days
  end

  private
  def calculate_daily_increase
    amount * (daily_interest / 100.0)
  end
end
