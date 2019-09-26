module Luhn
  def self.is_valid?(number)
    # Luhn algorithm logic
    counter = 1
    sum = 0
    val = 0
    cardArray = number.to_s.split(//)
    reversedArray = cardArray.reverse
    reversedArray.each do |num|
      val = num.to_i
      if counter % 2 == 0
        val = val * 2
        if val >= 10
          val = val - 9
        end
      end
      sum = sum + val
      counter = counter + 1
    end
    if sum % 10 == 0
      return true
    else
      return false
    end
  end
end
