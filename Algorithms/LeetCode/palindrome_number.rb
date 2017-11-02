def is_palindrome(x)
     x = x.to_s
     if x == x.reverse
         return true
     else
         false
     end
end
