
 def pay(cost)
   puts "**** paying $#{ cost }"
 end

 def order_pizza(topping)

   cost = 10

   case topping
   when :pepperoni
     cost += 2
   when :sausage
     cost += 4
   end

   return cost
 end

 cost = order_pizza(:sausage)
 pay(cost)

#
# end of pizza example
#

 class Person

  #attr_reader :first_name, :last_name
  #attr_writer :first_name, :last_name
  attr_accessor :first_name, :last_name

  attr_writer   :deep_dark_secret

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @awake      = true
  end

  # Reader
  #def first_name
  #  @first_name
  #end

  # Reader
  #def last_name
  #  @last_name
  #end

  # Writer
  #def first_name=(first_name)
  #  @first_name = first_name
  #end

  def full_name
    "#{ first_name } #{ @last_name }"
  end

  def greeting
    if @awake
      "Hello, my name is #{ full_name }"
    else
      "ZZZ"
    end
  end

  def sleep
    @awake = false
  end

  def wake
    @awake = true
  end

end
