def num_to_s(num, base=10)
  digits_hash = {
    0 => "0",
    1 => "1",
    2 => "2",
    3 => "3",
    4 => "4",
    5 => "5",
    6 => "6",
    7 => "7",
    8 => "8",
    9 => "9",
    10 => "a",
    11 => "b",
    12 => "c",
    13 => "d",
    14 => "e",
    15 => "f"
  }

  output = ""

  pow = 0
  until num / (base ** pow) == 0
    output << digits_hash[(num / (base ** pow)) % base]
    pow += 1
  end

  output.reverse
end

puts num_to_s(234, 10)
puts num_to_s(234, 2)
puts num_to_s(234, 16)
