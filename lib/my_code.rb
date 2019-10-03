
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
      starting_point = yield(source_array[j], starting_point)
      j += 1
      puts starting_point
  end
  if starting_point == nil
    return false
  end
  starting_point
end
