# for input: 600851475143

# starting from the number, start decrementing and checking for prime numbers
# then, take the first number that comes along and see if the number divides by it
# if not, repeat

def largest_prime_factor(input)
  div = 2
  (input%div==0 ? input/=div : div+=1) until is_prime?(input)
  input
end

def is_prime?(input)
  (2..(input**0.5)).none?{|div| input%div==0 }
end


