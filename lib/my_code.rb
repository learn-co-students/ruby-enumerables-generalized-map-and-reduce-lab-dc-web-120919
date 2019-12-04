# Your Code Here
def map(source_array)
  i = 0
  new = []
  while i < source_array.length
    new << yield(source_array[i])
    i += 1
  end
  new
end

def reduce(source_array, starting_point = nil)
  if starting_point
    accume = starting_point
    i = 0
  else
    accume = source_array[0]
    i = 1
  end
  while i < source_array.length
    accume = yield(accume, source_array[i])
    i += 1
  end
  accume
end
