def map(array)
  out = []
  count = 0
 while (count < array.count) do
    out.push(yield(array[count]))
    count+=1
  end
 out
end


def reduce(array,*starting)
  if starting[0]
    value = starting[0]
    count = 0
    else
    value = array[0]
    count = 1
  end

  while count < array.count do
    value =  yield(value,array[count])
    count+=1
  end 
 value
end















# def map(element1) 
#   element1.map { |n| n * -1 }
#   element1.map {|n| n * 2}
# end












