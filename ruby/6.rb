#!/usr/bin/env ruby

MAX = 100
p = 0
q = 0

(1..MAX).each do |i|
  p += i ** 2
  q += i
end

puts q ** 2 - p
