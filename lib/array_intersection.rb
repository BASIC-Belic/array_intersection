# Creates a new array to return the intersection of the two input arrays
def intersection(a, b)

  #MY SOLUTION
  if a == nil || b == nil
    return []
  end

  if a.length == 0 || b.length == 0
    return []
  end

  if a.length < b.length
    c = a - b
    aintersect = a - c
    return aintersect
  else
    d = b - a
    bintersect = b - d
    return bintersect
  end

  #RUBY WAY
  # # in ruby, the & is also the intersection
  #  a & b

  # #SHRUTI WAY
  #
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
end
