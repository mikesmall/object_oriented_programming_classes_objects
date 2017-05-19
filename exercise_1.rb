# I've added "arg" to argument names,
# to keep track of which thing's what.

class BankAccount

  def initialize(balance_arg, interest_rate_arg)
    @balance = balance_arg
    @interest_rate = interest_rate_arg
  end

  # class should have an instance method called deposit
  # that accepts one amount argument and adds that amount to the total balance
  def deposit
    puts "Enter your deposit amount:"
    deposit_amount = gets.chomp
    deposit_amount = deposit_amount.to_i
    @balance = @balance += deposit_amount
    puts "Deposit accepted. Your new balance is $#{ @balance }."
  end

  # withdraw instance method that accepts one amount
  # argument and subtracts it from the total balance
  def withdraw
    puts "Enter your withdrawal amount:"
    withdrawal_amount = gets.chomp
    withdrawal_amount = withdrawal_amount.to_i
    @balance = @balance -= withdrawal_amount
    puts "Withdrawal approved. Your new balance is $#{ @balance }."
  end

  # a gain_interest instance method that increases the total balance according to the interest rate
  def gain_interest
    
  end

  def report
    puts "Your balance is $#{ @balance } and your interest rate is #{ @interest_rate }%."
  end

end


new_customer = BankAccount.new(300,2)

new_customer.report

new_customer.deposit

new_customer.withdraw



#  There should be a withdraw instance method that accepts one amount argument and subtracts it from the total balance

#  Finally, there should be a gain_interest instance method that increases the total balance according to the interest rate.
