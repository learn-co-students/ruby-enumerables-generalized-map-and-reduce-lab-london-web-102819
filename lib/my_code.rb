# Your Code Here
def map(source_array)
  ary =[ ]
  source_array.each do |i|
    ary << yield(i) 
  end
  ary
end
# Baby_K fancy solution. same solution, different syntax 
# def map(source_array)
#   ary =[ ]
  # source_array.each { |i| 
  #   ary << yield(i) 
  # }
#   ary
# end

def reduce (source_array, starting_point = nil)
  if starting_point != nil
    total= starting_point
    i =0#for the loop counter
  else
    total = source_array[0]
    i = 1
  end
  while i < source_array. length do
  total =  yield(total, source_array[i])
  i+=1
  end 
total
end