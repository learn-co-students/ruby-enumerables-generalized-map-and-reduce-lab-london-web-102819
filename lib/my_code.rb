# Your Code Here
def map(array)
  new = []
  counter = 0 
  while counter < array.length do 
    yield
    counter += 1
  end 
  new
end

map(array) { |i| i * -1 }