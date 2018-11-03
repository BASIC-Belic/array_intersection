# Creates a new array to return the intersection of the two input arrays
def intersection(a, b)

  if a == nil || b == nil
    return []
  end

  if a.length == 0 || b.length == 0
    return []
  end

  c = a - b

  aintersect = a - c

  return aintersect

  #similarly:
  # d = b - a
  #bintersect = b - d
  #this should be equal to aintersect
end
