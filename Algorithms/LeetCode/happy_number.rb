def is_happy(n)
    new_ints = []
    loop do
      sum =  n.to_s.split("").map(&:to_i).reduce(:+)
      return true if sum == 1
      return false if new_ints.include? (sum)
      new_ints << sum
      n = sum
    end
end