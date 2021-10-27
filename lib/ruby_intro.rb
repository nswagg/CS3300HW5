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
  if arr.length == 0 || arr.length ==1 # ie, can't sum two elements
    return false
  end
=begin
  for i in 0..arr.length do 
    j = i
    for j in j..arr.length-1 do
      if arr[i][j] == n
        return true
      end
    end
  end

  return false
=end

  #still has an issue when there are not 2 nums to sum
  test = arr.permutation(2).to_a
  puts test.inspect
  return false
  for i in 0..test.length do
    x = test[i][0]
    y = test[i][1]
    if x+y == n
      return true
    end
  end 
  puts "false. Exiting".inspect
  return false #if no two were found to sum to n
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
