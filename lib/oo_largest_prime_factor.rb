# Enter your object-oriented solution here!

class LargestPrimeFactor

  def initialize(input)
    @input = input
  end

  def number
    prime_array = Array.new
    @input.downto(1).each do |x|
      if (('1' * x) !~ /^1?$|^(11+?)\1+$/) && (@input%x == 0) # make sure to use ==
        prime_array << x
        break if prime_array.length == 1
      end
    end # end downtoi
    prime_array.pop
  end

end # end class