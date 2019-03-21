#!/usr/bin/env ruby

# これは反則 ...
# require 'prime'
# 
# MAX = 2 * (10 ** 6)
# s = 0
# 
# Prime.each(MAX) do |i|
#   s += i
# end
# 
# puts s

MAX = 2 * (10 ** 6)
s = 2 + 3

(2..MAX).each do |i|
  flag = false

  # 5以上の全ての素数は 6n +/- 1 で表せるらしい
  if i % 6 == 1 or i % 6 == 5
    # n が素数かどうかは sqrt(n) までの数字で割れるか判断すればよかったような ...
    (2..Math.sqrt(i).to_i).each do |j|
      flag = true if i % j == 0
    end

    s += i if flag == false
  else
    next
  end
end

puts s
