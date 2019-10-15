def map (array)
  new_array=[]
  i=0
  
  while i<array.length do
    new_array.push(yield(array[i]))
    i+=1
  end
  return new_array
end

def reduce (array,*start)
  i=1
  if(start.size == 1)
    start = yield(start[0], array[0])
  else
    start = yield(array[0], array[1])
    i=2
  end
  while i<array.length do
    start = yield(start,array[i])
    i+=1
  end
    return start
  end
    
  
  #element=array[i]
  #element_modified=yield at (element)
  #new_array.push(element_modified)
  
  #new_array.push(yield at (array[i]))