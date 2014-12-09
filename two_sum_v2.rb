class Array

  def two_sum
    output_arr = []

    (0...self.length-1).each do |i|
      (i+1..self.length-1).each do |j|
        output_arr << [i,j] if self[i] + self[j] == 0
      end
    end

    output_arr
  end

end


print [-1, 0, 2, -2, 1, 5, 1, 0, -5, -2].two_sum
