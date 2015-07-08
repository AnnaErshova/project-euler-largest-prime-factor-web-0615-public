# for input: 600851475143

# starting from the number, start decrementing and checking for prime numbers
# then, take the first number that comes along and see if the number divides by it
# if not, repeat

def largest_prime_factor(input)
  prime_array = Array.new
  input.downto(1).each do |x|
    if (('1' * x) !~ /^1?$|^(11+?)\1+$/) && (input%x == 0) # make sure to use ==
      prime_array << x
      break if prime_array.length == 1
    end
  end # end downtoi
  prime_array.pop
end