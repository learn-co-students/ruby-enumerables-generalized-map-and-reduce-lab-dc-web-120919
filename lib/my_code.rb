# Your Code Here
def map(x)
  array = []
  i = 0 
  while i < x.length 
    array << (yield(x[i]))
    i += 1 
  end 
  array
end 

def reduce(array, starting_value = nil)
  if starting_value
accum = starting_value
    i = 0
  else
    accum = array[0]
    i = 1
  end
  while i < array.length
    accum = yield(accum, array[i])
    i += 1
  end
  accum
end