# Your Code Here
def map(array)
  new = []
  counter = 0 
  while counter < array.length do 
    new.push(yield(array[counter]))
    counter += 1
  end 
  new
end

def reduce(array, starting_point = 0)
  if starting_point != 0 
    total = starting_point
    counter = 0 
  else
    total = array[0]
    counter = 1
  end
  while counter < array.length do 
    total = yield(total, (array[counter]))
    counter += 1 
  end 
  total
end