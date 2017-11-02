# Reverse digits of an integer.

# Example1: x = 123, return 321
# Example2: x = -123, return -321
# The input is assumed to be a 32-bit signed integer. Your function should return 0 when the reversed integer overflows.



def reverse(x)
    if x == 0
        return 0
    end
    array = x.to_s.split("")
    answer = []
    array.each_with_index do |num, ind|
        answer.insert(-(ind+1), num)
    end
    p answer
    if answer.last == "-"
      return -(answer.join("").to_i)
    end
    answer.join("").to_i
end

input = -123
p reverse(input)