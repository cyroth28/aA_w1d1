def towers_of_hanoi

  $piles = [[], [], []]

  puts "How many discs this game? "
  num_discs = gets.chomp.to_i

  (1..num_discs).each do |i|
    $piles[0] << num_discs + 1 - i
  end

  until $piles[0].empty? && \
    ($piles[1].empty? || $piles[2].empty?)
      puts
      puts
      puts "pile 1: #{$piles[0]}"
      puts "pile 2: #{$piles[1]}"
      puts "pile 3: #{$piles[2]}"

      puts "From which pile? (1, 2, 3)"
      from_choice = gets.chomp.to_i
      puts "To which pile? (1, 2, 3)"
      to_choice = gets.chomp.to_i
      game_move(from_choice, to_choice)
  end

  puts "You win!"
end

def game_move(from_c, to_c)
  if ![1, 2, 3].include?(from_c) || ![1, 2, 3].include?(to_c)
    puts "Pick a pile from 1 to 3."
  elsif $piles[from_c-1].empty?
    puts "Can't move from an empty pile. Choose again."
  elsif from_c == to_c
    puts "Please move discs to different piles. Try again."
  elsif !$piles[to_c-1].empty? && $piles[to_c-1].last < $piles[from_c-1].last
    puts "Invalid Move. Try again."
  else
    $piles[to_c-1] << $piles[from_c-1].pop
  end
end


towers_of_hanoi
