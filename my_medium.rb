def my_median(arr)
  if arr.length % 2 == 0
    return (arr.sort[arr.length/2] + arr.sort[(arr.length/2)-1])/2
  else
    return arr.sort[arr.length/2]
  end
end
