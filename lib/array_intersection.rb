# Creates a new array to return the intersection of the two input arrays
def intersection(a, b)

  # # MY FIRST SOLUTION
  # # using the truth about sets
  # if a == nil || b == nil
  #   return []
  # end
  #
  # if a.length == 0 || b.length == 0
  #   return []
  # end
  #
  # if a.length < b.length
  #   c = a - b
  #   aintersect = a - c
  #   return aintersect
  # else
  #   d = b - a
  #   bintersect = b - d
  #   return bintersect
  # end

  # # RUBY WAY
  # # in ruby, the & is also the intersection
  #  a & b

  # # SHRUTI WAY
  # # using the shorter array, create a hash where the integers are the keys
  # # set the value for the key to true for integers in the array
  #
  # return [] if a == nil || b == nil || a.length == 0 || b.length == 0
  #
  # if a.length <= b.length
  #   shorter = a
  #   longer = b
  # else
  #   shorter = b
  #   longer = a
  # end
  #
  # i = 0
  # hash = {}
  #
  # while i < shorter.length do
  #   hash[shorter[i]] = true
  #   i += 1
  # end
  #
  # i = 0
  # intersect = []
  #
  # while i < longer.length do
  #   if hash[longer[i]]
  #     intersect << longer[i]
  #   end
  #   i += 1
  # end
  #
  # return intersect

  # # Another way: Merge sort / quicksort on longer array
  # # Binary search on longer array to search for elem in common with each elem of shorter array
  # # only works if no repeating elem in the shorter array
  return [] if a == nil || b == nil || a.length == 0 || b.length == 0

  if a.length <= b.length
    shorter = a
    longer = b
  else
    shorter = b
    longer = a
  end

  sort(longer, longer.length)

  intersect = []

  shorter.each do |i|
    common = binary_search(longer, longer.length, i)
    if common
      intersect << common
    end
  end

  return intersect
end

#helper for sorting / binary search way of finding intersection
def sort(array, length)
  length.times do |index| # outer loop - n elements
    min_index = index # assume index is where the next minimally value is
    temp_index = index+1 # compare with values at index+1 to length-1
    while temp_index < length # inner loop - n-1 elements
      if array[temp_index] < array[min_index] # found a new minimum, update min_index
        min_index = temp_index
      end
      temp_index += 1 # move to next index
    end
    if min_index != index # next minimum value is not at current index, swap
      temp = array[min_index]
      array[min_index] = array[index]
      array[index] = temp
    end
  end
end

#helper for sorting / binary search way of finding intersection
def binary_search(array, length, value_to_find)
  middle = length / 2
  low = 0
  high = length - 1

  while low <= high

    if array[middle] == value_to_find
      return value_to_find
    elsif array[middle] < value_to_find
      low = middle + 1
    else
      high = middle - 1
    end

    middle = (low + high) / 2
  end

  return false
end
