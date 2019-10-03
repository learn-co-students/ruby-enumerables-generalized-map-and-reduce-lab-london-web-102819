
def map(source_array)
  new = []
  j = 0
  while j < source_array.length do
    new[j] = yield(source_array[j])
    j += 1
  end
  new
end

def reduce(source_array, starting_point = 0)
  j = 0
  while j < source_array.length do
    if source_array[j]
      yield(source_array[j])
      starting_point = yield(source_array[j], starting_point)
      j += 1
      p starting_point
    else
      yield(source_array[j])
      j += 1
    end
  end
end
end

p reduce([1,2,3]) {|a|  a = a}
