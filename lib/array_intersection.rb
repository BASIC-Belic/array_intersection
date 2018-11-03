# Creates a new array to return the intersection of the two input arrays
def intersection(a, b)

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

  # # in ruby, the & is also the intersection
  #  a & b
end
