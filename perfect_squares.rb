def perfect_squares(range)
  range.select { |i| i < 100 && is_perfect_square?(i) }
end

def is_perfect_square?(num)
  num_factors = 0
  (2...num).each do |i|
    num_factors += 1 if num % i == 0
  end
  return true if num_factors % 2 == 1
  return false
end
