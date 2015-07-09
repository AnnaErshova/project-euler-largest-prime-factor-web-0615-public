# Enter your object-oriented solution here!
require 'pry'
class LargestPrimeFactor

  def initialize(input)
    @input = input
    @div = 2
  end

  def number
    # binding.pry
    (@input % @div==0 ? @input/=@div : @div+=1) until is_prime?
    @input
  end

  def is_prime?
    # binding.pry
    (@div..(@input**0.5)).none? {|num| @input%num==0 } # or use Math module for sqrt
  end

end # end class