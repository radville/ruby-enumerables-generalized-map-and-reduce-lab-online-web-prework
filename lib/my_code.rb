def map(array)
  new = []
  i = 0
    while i < array.length do
      new.push(yield(array[i]))
      i += 1
    end
  return new
end

def reduce(array, starting_point = false)
  i = 0
  if starting_point
    sum = starting_point
  else 
    sum = array[i]
    i += 1
  end
    while i < array.length do
      sum = yield(sum, array[i])
      puts sum
      i += 1
    end
    return sum
end

source_array = [ false, nil, nil, nil, true]
reduce(source_array){|memo, n| memo || n}