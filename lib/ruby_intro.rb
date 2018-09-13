# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  size = arr.length
  sum = 0
  for i in 0..size-1
    sum = sum + arr.at(i)
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  size = arr.length
  if size == 0
     return 0
  end
  if size ==1
     return arr.at(0)
  end
  max = arr.at(0)
  sec = arr.at(1)
  for i in 2..size-1
    if arr.at(i)>=max
        sec = max
        max = arr.at(i)
    elsif arr.at(i)>sec and arr.at(i)<max
        sec = arr.at(i)
    end
  end
  return max + sec
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  size = arr.length
  if size == 0
     return false
  end
  for i in 0..size-1
     for j in i+1..size-1
       if arr.at(i)+arr.at(j)==n
          return true
       end
     end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}";
end

def starts_with_consonant? s
  # YOUR CODE HERE
  
  if s =~ /\A(?=[^aeiouAEIOU])(?=[A-Z|a-z])/i
     return true
  else
     return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length == 1 and s[0].eql? "0"
     return true
  end
  b = s =~ /^[01]*00$/   #1010101010100
  if s =~ /^[01]*00$/
     return true
  else
     return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
     if isbn.length == 0
        raise ArgumentError.new("ISBN cannot be empty")
     end
     if price <=0
        raise ArgumentError.new("Price cannot be less than or equal to zero")
     end
     @isbn = isbn
     @price = price
  end
  def isbn()
     return @isbn
  end
  def price()
     return @price
  end
  def isbn=(isbn)
     if isbn.length == 0
     	raise ArgumentError.new("ISBN cannot be empty")
     end
     @isbn = isbn
  end
  def price=(price)
     if price <=0
        raise ArgumentError.new("Price cannot be less than or equal to zero")
     end
     @price = price
  end
  def price_as_string()
     n = Integer(@price*100)/100.0
     if Integer(@price*100)%10 == 0
         return "$#{n}0"
     else
         return "$#{n}"
     end
  end

end
