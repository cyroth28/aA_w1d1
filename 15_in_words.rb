class Fixnum

  def in_words
    return "zero" if self == 0

    thousands_places = ["","thousand", "million", "billion", "trillion"]

    set_of_illions = []
    $output_string = ""
    digits = self.to_s.split("").map! { |elem| elem.to_i }


    while digits.length > 3
      set_of_illions << digits.pop(3)
    end
    set_of_illions << digits.pop(digits.length) if digits.length > 0

    set_of_illions[-1].unshift(0) if set_of_illions[-1].length < 3
    set_of_illions[-1].unshift(0) if set_of_illions[-1].length < 3

    while set_of_illions.any?
      if set_of_illions.last != [0, 0, 0]
        thousands(set_of_illions.pop)
        $output_string <<  "#{thousands_places[set_of_illions.length]} "
      else
        thousands(set_of_illions.pop)
      end
    end

    $output_string.strip
  end

  def thousands(three_digits)
    ones_places = ["","one","two","three","four","five","six","seven","eight","nine"]
    tens_exceptions = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    tens_places = ["","ten","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]

    $output_string << "#{ones_places[three_digits[0]]} hundred " if three_digits[0] > 0
    if three_digits[1] == 1 && three_digits[2] != 0
      $output_string << "#{tens_exceptions[three_digits[2]]} "
    else
      if three_digits[1] == 0 && three_digits[2] != 0
        $output_string << "#{ones_places[three_digits[2]]} "
      elsif three_digits[2] == 0 && three_digits[1] != 0
        $output_string << "#{tens_places[three_digits[1]]} "
      elsif three_digits[2] != 0 && three_digits[1] != 0
        $output_string << "#{tens_places[three_digits[1]]} #{ones_places[three_digits[2]]} "
      end
    end
  end

end
