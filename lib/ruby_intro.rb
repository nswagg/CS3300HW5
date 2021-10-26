# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  first=arr.max(2);
  first[0]+first[1];
end

def sum_to_n? arr, n
  if arr.length == 0 || arr.length ==1 # ie, can't sum two elements
    return false
  end
  test = arr.permutations(2).to_arr
  for i in test.length do
    test[i][0] + test[i][1] == n ? return true : end

  return false #if no two were found to sum to n
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
