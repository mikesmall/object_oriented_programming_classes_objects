class Paperboy

  attr_reader :earnings # this should make earnings "read-only"

  def initialize(name, experience, earnings)
    @name = name
    @experience = 0 # number of papers
    @earnings = 0
  end #initialize


  # The minimum number of papers to deliver is 50.
  # Quota is calculated as half of your experience added to the minimum.
  def quota
    quota = @experience / 2 + 50
    # Quota starts at 0. 0/2+50=50,
    # so the above line acts as base quota,
    # and also updating 'current' quota.
  end #quota


    # This method should calculate and return the paperboy's quota for his next delivery.
    # It should also update the paperboy's experience!
    # start_address is always a smaller number than the end_address
    # So the first time a paperboy makes a delivery, the quota is 50. The next time, the quote is 50 plus half the number of papers that the paperboy has delivered in the past. In this way the quota should increase after every delivery the paperboy makes.
    # Every day, each paperboy is given a house number to start at and a house number to finish at.
              # They get paid $0.25 for every paper they deliver
              # and $0.50 for every paper over their quota.

  def deliver(start_address, end_address)

    days_earnings = 0.00
    # This method will take two house numbers and return the amount of money earned on this delivery as a floating point number.
    total_houses = (end_address - start_address).abs + 1
    # If at the end of the day they haven't met their quota, they lose $2.
    if
      total_houses < quota
      days_earnings = days_earnings + total_houses * 0.25 - 2
    elsif
      days_earnings = (total_houses - quota) * 0.50 + (quota * 0.25)
    else
      days_earnings = days_earnings + total_houses * 0.25
    end

    @experience += total_houses
    @earnings += days_earnings

    return days_earnings

  end #deliver

  def report
    puts "Hi. My name's #{ @name }."
    puts "I delivered #{ @experience } papers,"
    puts "and I only made $#{ @earnings }!"
  end #report
end #class:Paperboy

dougie = Paperboy.new("Dougie", 0, 0)
# Trip One
dougie.quota # => 50
dougie.deliver(160, 101) # => 17.5
dougie.earnings #=> 17.5
dougie.report # => "I'm Tommy, I've delivered 60 papers and I've earned $17.5 so far!"
# Trip Two
dougie.quota # => 80
dougie.deliver(75, 1) # => 16.75
dougie.earnings #=> 34.25
dougie.report # => "I'm Tommy, I've been delivered 135 papers and I've earned $34.25 so far!"
