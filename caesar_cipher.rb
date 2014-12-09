def caesar_cipher(str, shift)
  str = str.split("")

  str.map do |ltr|
    if (ltr.ord + shift) > 122
      (ltr.ord + shift - 26).chr
    else
      (ltr.ord + shift).chr
    end 
  end.join("")

end

print caesar_cipher("helloz", 3)
