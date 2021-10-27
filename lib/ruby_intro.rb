# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    first=arr.max(2);
    first[0]+first[1];
  end
end

def sum_to_n? arr, n
  if arr.length < 2
    return false
  end
  for i in 0..arr.length-1 do 
    for j in i..arr.length-1 do
      if i != j && arr[i] + arr[j] == n
        return true
      end
    end
  end
  return false #if no two were found to sum to n


=begin 
#This was an attempt to make the function work with permutations
#Needless to say, it did not work
  test = arr.permutation(2).to_a
  puts test.inspect
  return false
  for i in 0..test.length-1 do
    x = test[i][0]
    y = test[i][1]
    if x+y == n
      return true
    end
  end 
=end
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  test = s[0,1]
  #Working with a String Regex
  if !!test.match(/\A(?=[^aeiouAEIOU])(?=[a-zA-Z])/)
    return true
  end
  return false
end

def binary_multiple_of_4? s
  if s.size == 0 || s.match?(/[^01]/) #checks that all values are 1 or 0 or space
    return false
  end

  if (s.to_i(2)).modulo(4) == 0
    return true
  end
  return false

end

# Part 3

class BookInStock

  def initialize(isbn, price)
    raise ArgumentError if isbn.size == 0 || price <=0
    raise ArgumentError if isbn.class != String && price.class != Float
    @isbn = isbn
    @price = price
  end

  #Getters
  attr_reader :isbn
  attr_reader :price

  #Setters
  attr_writer :isbn
  attr_writer :price
  
  def price_as_string
    return "$%.2f" % @price.to_s
  end
end
