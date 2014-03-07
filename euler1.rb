#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below 1000.

def euler1(number)
  sum = 0
  (1..number-1).each do |n|
    sum += n if (n%3 == 0 || n%5== 0)
  end
  return sum
end

#Using reduce
def euler1_reduce(number)
  (1..number-1).reduce(0) do |sum, value|
    sum += value if (value%3 == 0 || value%5 == 0)
    sum
  end
end
