def my_uniq(arr)
  output_arr = []
  arr.each do |elem|
    output_arr << elem if !output_arr.include?(elem)
  end
  
  output_arr
end

print my_uniq([1,2,1,3,3])
