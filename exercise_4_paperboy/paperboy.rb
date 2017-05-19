class Paperboy

  def initialize(name, experience, earnings)
    @name = name
    @experience = 0
    @earnings = 0
    attr_reader :earnings # this should make earnings "read-only"
  end #initialize

  # This method should calculate and return the paperboy's quota for his next delivery.
  # If at the end of the day they haven't met their quota, they lose $2.
  # The minimum number of papers to deliver is 50.
  # Quota is calculated as half of your experience added to the minimum.
  def quota
    quota = @experience / 2 + 50
    # Quota starts at 0. 0/2+50=50,
    # so the above line acts as base quota,
    # and also updating 'current' quota.
  end #quota

    # This method will take two house numbers and return the amount of money earned on this delivery as a floating point number. It should also update the paperboy's experience!
    # start_address is always a smaller number than the end_address
    # So the first time a paperboy makes a delivery, the quota is 50. The next time, the quote is 50 plus half the number of papers that the paperboy has delivered in the past. In this way the quota should increase after every delivery the paperboy makes.
  def deliver(start_address, end_address)
  end

  # This method should return a string about the paperboy's performance
  # e.g. "I'm Tommy, I've delivered 90 papers and I've earned $38.25 so far!"
  def report
  end #report
end #class:Paperboy

dougie = Paperboy.new("Dougie")
# Sample code for test output
dougie.quota # => 50
dougie.deliver(101, 160) # => 17.5
dougie.earnings #=> 17.5
dougie.report # => "I'm Tommy, I've delivered 60 papers and I've earned $17.5 so far!"



# Every day, each paperboy is given a house number to start at and a house number to finish at.

# They get paid $0.25 for every paper they deliver
# and $0.50 for every paper over their quota.