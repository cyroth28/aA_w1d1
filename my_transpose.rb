def my_transpose(arr)
  cols = []
  arr.length.times {cols << []}

  (0...arr.length).each do |i|
    (0...arr.length).each do |j|
      cols[i] << arr[j][i]
    end
  end
  cols
end

my_transpose([[0, 1, 2, 3], [3, 4, 5, 6], [6, 7, 8, 9], [9, 10, 11, 12] ])
