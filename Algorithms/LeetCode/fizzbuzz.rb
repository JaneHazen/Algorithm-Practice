def fizz_buzz(n)
    n.each do |i|
      x = ''
      x += 'Fizz' if i.to_i%3==0
      x += 'Buzz' if i.to_i%5==0
      puts(x.empty? ? i : x);
    end
end